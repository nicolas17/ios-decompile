#!/usr/bin/python3

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

import re
import sys

shift = int(sys.argv[2], 0)

with open(sys.argv[1], "r") as inf:
    for line in inf:
        line = line.rstrip()
        m = re.search(r'\bfp\[(-?0x[0-9a-fA-F]+)(?:\+([0-9]+))?](\s*=\s*.*)$', line)
        if m:
            fp_offset = int(m.group(1), 16)
            if m.group(2):
                fp_offset += int(m.group(2), 16)
            line = "    sp[{}]{}".format(hex(fp_offset+shift), m.group(3))
        m = re.search(r'\bfp\s*([+-])\s*(0x[0-9a-fA-F]+)\b', line)
        if m:
            fp_offset = int(m.group(1)+m.group(2), 16)
            line = line[:m.start()] + 'sp + {}'.format(hex(fp_offset+shift)) + line[m.end():]
        print(line)
