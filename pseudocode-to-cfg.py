#!/usr/bin/python3

# Convert decompiled code into a control flow graph.
# Copyright (c) 2016 Nicolás Alvarez <nicolas.alvarez@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import sys
import re
import argparse

def skip_past(lineit, prefix):
    while True:
        l = next(lineit)
        if l.startswith(prefix):
            break

class BasicBlock:
    def __init__(self, label):
        self.content = ''
        self.label = label
        self.color = None
        self.is_last = False

def csv(s):
    return s.split(",")

argparser = argparse.ArgumentParser(description="Convert decompiled code into a control flow graph.")
argparser.add_argument("filename", help="the source file to parse")
argparser.add_argument("-v", "--verbose", help="print debugging messages", action="store_true")
argparser.add_argument("-o", "--output", help="name of generated graphviz file (default: stdout)")
argparser.add_argument("--collapse", help="list of block labels to collapse (hide code)",
        type=csv,
        default=[],
        metavar="block1,block2,...",
        dest="collapsed_blocks")
args = argparser.parse_args()

def log(msg):
    if args.verbose:
        print(msg, file=sys.stderr)

blocks = []
blocks_by_label = {}
links=[]

def start_new_block(label=None):
    if label is None:
        label = "_block{:02x}".format(len(blocks))
    block = BasicBlock(label)
    blocks.append(block)
    blocks_by_label[label] = block
    return block

STATE_IN_BLOCK = object()
STATE_OUTSIDE = object()
STATE_IN_SWITCH = object()

state = None

with open(args.filename, "r") as fp:
    lineit = iter(fp)
    skip_past(lineit, "@implementation ")
    skip_past(lineit, "-(")
    skip_past(lineit, "{")

    current_block = start_new_block("init")
    state = STATE_IN_BLOCK

    for line in lineit:
        m = re.match(r'\s*@end\s*$', line)
        if m:
            assert state in (STATE_IN_BLOCK, STATE_OUTSIDE)
            state = None
            break

        m = re.match(r'([A-Za-z_][A-Za-z0-9_]*)\s*:', line)
        if m:
            assert state in (STATE_IN_BLOCK, STATE_OUTSIDE)
            state = STATE_IN_BLOCK
            log("Found label {}".format(m.group(1)))
            current_block = start_new_block(m.group(1))
            current_block.content += line
            continue

        m=re.match(r'    goto ([A-Za-z_][A-Za-z0-9_]*);$', line)
        if m:
            assert state == STATE_IN_BLOCK
            state = STATE_OUTSIDE
            log("Found goto {}".format(m.group(1)))
            current_block.content += line
            links.append((current_block.label, m.group(1), "goto"))
            continue

        m=re.match(r'    if\b.*\bgoto ([A-Za-z_][A-Za-z0-9_]*);$', line)
        if m:
            assert state == STATE_IN_BLOCK
            log("Found conditional goto {}".format(m.group(1)))
            current_block.content += line
            new_block = start_new_block()
            links.append((current_block.label, m.group(1), "true"))
            links.append((current_block.label, new_block.label, "false"))
            current_block = new_block
            continue

        m=re.match(r'    switch\s*\(\s*(.*)\s*\)\s*\{', line)
        if m:
            assert state == STATE_IN_BLOCK
            state = STATE_IN_SWITCH
            log("Found switch! Condition is {}".format(m.group(1)))
            current_block.content += line
            continue

        m=re.match(r'\s+case\s+(\d+):\s*goto\s+([A-Za-z_][A-Za-z0-9_]*);', line)
        if m:
            assert state == STATE_IN_SWITCH
            log("Found case! If {} goto {}".format(m.group(1), m.group(2)))
            links.append((current_block.label, m.group(2), m.group(1)))
            current_block.content += line
            continue

        if state == STATE_IN_SWITCH:
            if line.startswith('    }'):
                state = STATE_IN_BLOCK

        if state == STATE_IN_BLOCK:
            current_block.content += line


blocks[-1].is_last = True

def graphviz_escape(text):
    text = text.replace('\\', '\\\\')
    text = text.replace('"', '\\"')
    text = text.replace('\n', '\\l')
    return text

for block in blocks:
    if block.label in args.collapsed_blocks:
        block.content = "["+block.label+"]";
    else:
        block.content = "["+block.label+"]\n"+block.content.lstrip('\n').rstrip()+'\n'

for i, block in enumerate(blocks):
    if not any(block.label == link[0] for link in links) and not block.is_last:
        links.append((block.label, blocks[i+1].label, "fallthru"))

if args.output:
    outfile = open(args.output, "w")
else:
    outfile = sys.stdout

outfile.write("""
digraph {
    node[shape=rectangle fontname=monospace];
""")
for block in blocks:
    outfile.write('    "{}" [label="{}"'.format(block.label, graphviz_escape(block.content)))
    if block.color is not None:
        outfile.write(' style=filled fillcolor="{}"'.format(graphviz_escape(block.color)))
    outfile.write(']\n')
for bfrom, bto, linklabel in links:
    outfile.write('    "{}" -> "{}" [taillabel="{}"]\n'.format(
        graphviz_escape(bfrom),
        graphviz_escape(bto),
        graphviz_escape(linklabel)
    ))
outfile.write("}\n")
