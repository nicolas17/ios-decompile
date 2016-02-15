/*
 * This file was manually decompiled from MobileMail, iOS 9.0.2, arm64.
 *
 * Original code (c) 2015 Apple, Inc.
 * Decompilation (c) 2016 Nicolás Alvarez
 */

#include <UIKit/UIKit.h>

enum BlockLiteralFlags {
  BLOCK_HAS_COPY_DISPOSE =  (1 << 25),
  BLOCK_HAS_CXX_OBJ =       (1 << 26),
  BLOCK_IS_GLOBAL =         (1 << 28),
  BLOCK_USE_STRET =         (1 << 29),
  BLOCK_HAS_SIGNATURE  =    (1 << 30),
  BLOCK_HAS_EXTENDED_LAYOUT = (1 << 31)
};
struct Block_descriptor {
    unsigned long int reserved;     // NULL
    unsigned long int size;         // sizeof(struct Block_literal_1)
    // optional helper functions
    void (*copy_helper)(void *dst, void *src);     // IFF (1<<25)
    void (*dispose_helper)(void *src);             // IFF (1<<25)
    // required ABI.2010.3.16
    const char *signature;                         // IFF (1<<30)
};

struct Block_literal_1 {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor *descriptor;
    // imported variables
    id captured_self;
    id captured_message;
    id captured_xxx;
    BOOL captured_swipe;
};

static struct Block_descriptor block_descriptor_1 = {
    0,
    sizeof(Block_literal_1),
    0x000000010009cb10,
    0x000000010009cb5c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x10009c384, which is important
int32_t jumptable1[] = { -0x20, -0x638, -0x540, -0x4fc, -0x638, -0x4b8 };

-(UIPreviewAction*)_previewActionForSwipeAction: (unsigned long long)action
                                    withMessage: (id)message
                                       forSwipe: (BOOL)swipe
{
    /*
    x22 = self
    x19 = action
    x21 = message
    x20 = swipe
    */

    x25 = [self presentingViewController];
    if (x25 == 0) {
        x25 = [[UIApplication sharedApplication] sceneController];
    }

    reusedBlockFlags = BLOCK_HAS_COPY_DISPOSE | BLOCK_HAS_SIGNATURE | BLOCK_HAS_EXTENDED_LAYOUT;
    if (action > 5) goto L1;

    x0 = 0;
    x9 = jumptable1 + jumptable1[action];
    goto x9;

    L1: // 0x10009bd4c
    if (action > 6) goto L2;

    //0x10009bd54
    x23 = [[NSBundle mainBundle] localizedStringForKey: @"PREVIEW_SWIPE_ARCHIVE" value:"" table:"Main-OrbHW"];

    w24 = 0;
    Block_literal_1 myBlock;
    myBlock.isa = &_NSConcreteStackBlock;
    myBlock.flags = reusedBlockFlags;
    myBlock.reserved = 0;
    myBlock.invoke = 0x10009c82c;
    myBlock.descriptor = block_descriptor_1;
    myBlock.captured_self = self;
    myBlock.captured_message = message;
    myBlock.captured_xxx = x25;
    myBlock.captured_swipe = swipe; // 8-bit
    x27 = &myBlock;
    w26 = 0x2; // orr w26, wzr, #0x2
    goto jump_A_124;

    L2: // 0x10009bdd8
}
