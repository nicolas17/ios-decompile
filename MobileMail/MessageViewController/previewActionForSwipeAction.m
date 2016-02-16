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
struct Block_literal_2 {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor *descriptor;
    // imported variables
    id captured_self;
    id captured_message;
};
struct Block_literal_3 {
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
    BOOL captured_movesToTrash;
};

// at 0x1001fe1e0
static struct Block_descriptor block_descriptor_1 = {
    0,
    sizeof(Block_literal_1), // 0x39
    0x000000010009cb10,
    0x000000010009cb5c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe0f0
static struct Block_descriptor block_descriptor_2 = {
    0,
    sizeof(Block_literal_2), // 0x30
    0x000000010009c3d0,
    0x000000010009c40c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe180
static struct Block_descriptor block_descriptor_3 = {
    0,
    sizeof(Block_literal_3), // 0x3a
    0x000000010009c7a4,
    0x000000010009c7f0,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x10009c384
int32_t jumptable1[] = { -0x20, -0x638, -0x540, -0x4fc, -0x638, -0x4b8 };

// at 0x10009c39c
int32_t jumptable2[] = { -0x594, -0xa4, -0xa4, -0x3b8, -0xa4, -0x374, -0x318, -0x2a4 };

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

    // reusedBlockFlags is in w28, apparently throughout the function
    reusedBlockFlags = BLOCK_HAS_COPY_DISPOSE | BLOCK_HAS_SIGNATURE | BLOCK_HAS_EXTENDED_LAYOUT;
    if (action > 5) goto L1;

    x0 = 0;
    switch (action) { // via jumptable1
        case 0:
            goto 0x10009c364;
        case 1:
            goto L2;
        case 2:
            goto 0x10009be44;
        case 3:
            goto 0x10009be88;
        case 4:
            goto L2;
        case 5:
            goto 0x10009becc;
    }

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
    goto jump_B_124;

    L2: // 0x10009bdd8
    x23 = w24 = x26 = x27 = 0;
    x8 = action - 4;
    if (x8 > 7) goto jump_B_124;

    // 0x10009bdf4
    switch (x8) { // via jumptable2
    case 0:
        goto jump_B_0; // 0x10009be08
    case 1:
        goto jump_B_1; // 0x10009c2f8
    case 2:
        goto jump_B_2; // 0x10009c2f8
    case 3:
        goto jump_B_3; // 0x10009bfe4
    case 4:
        goto jump_B_4; // 0x10009c2f8
    case 5:
        goto jump_B_5; // 0x10009c028
    case 6:
        goto jump_B_6; // 0x10009c084
    case 7:
        goto jump_B_7; // 0x10009c0f8
    }

jump_B_0: // 0x10009be08
    x0 = [NSBundle mainBundle];
    x1 = @selector(localizedStringForKey:value:table:);
    if (!swipe) goto 0x10009c1dc;

    x2 = @"PREVIEW_SWIPE_MOVE";
    x3 = @"";
    x4 = @"Main-OrbHW";
    goto 0x10009c1f4;

jump_A_2: // 0x10009be44
    x0 = [x21 messageFlags];
    x24 = x0 & 0x1;
    x0 = [NSBundle mainBundle];
    x1 = @selector(localizedStringForKey:value:table:);
    if (!swipe) goto 0x10009bf18;
    if (!x24) goto 0x10009c16c;
    x2 = @"PREVIEW_SWIPE_MARK_AS_UNREAD";
    goto 0x10009c174;

jump_A_3: // 0x10009be88
    x23 = [x21 messageFlags];
    x24 = (x23 >> 4) & 1; // ubfx x24, x23, #0x4, #0x1; is this useless?

    x0 = [NSBundle mainBundle];
    x1 = @selector(localizedStringForKey:value:table:);
    if (w23 & (1<<4) == 0) goto 0x10009bf28;

    x2 = @"MARK_EMAIL_UNFLAGGED";

    goto 0x10009bf30;

jump_A_5: // 0x10009becc
    x26 = [self->_mall deleteMovesToTrashForMessage: message];
    x0 = [NSBundle mainBundle];
    x1 = @selector(localizedStringForKey:value:table:);
    if (w26 == 0) goto 0x10009bf7c;

    // 0x10009bf0c
    x2 = @"PREVIEW_SWIPE_TRASH";
    goto 0x10009bf84;

    // 0x10009bf18
    if (x24 == 0) goto 0x10009c188;

    // 0x1000bf1c
    x2 = @"MARK_EMAIL_UNREAD";
    goto 0x10009c190;

    // 0x10009bf28
    x2 = @"MARK_EMAIL_FLAGGED";

    // 0x10009bf30
    x3 = @"";
    x4 = @"Main";
    x23 = objc_msgSend(x0,x1,x2,x3,x4);
    x26 = 0;
    Block_literal_2 block2; // at sp+0x1c0
    block2.isa = &_NSConcreteStackBlock;
    block2.flags = reusedBlockFlags;
    block2.reserved = 0;
    block2.invoke = 0x10009c3bc;
    block2.descriptor = &block_descriptor_2;
    block2.captured_self = self;
    block2.captured_message = message;
    x27 = &block2;
    goto jump_B_124;

    // 0x10009bf7c
    x2 = @"PREVIEW_SWIPE_DELETE";

    // 0x10009bf84
    x3 = @"";
    x4 = @"Main-OrbHW";
    x23 = objc_msgSend;

    x24 = 0;
    Block_literal_3 block3; // at sp+0x150
    block3.isa = &_NSConcreteStackBlock;
    block3.flags = reusedBlockFlags;
    block3.reserved = 0;
    block3.invoke = 0x10009c4bc;
    block3.descriptor = &block_descriptor_3;
    block3.captured_self = self;
    block3.captured_message = message;
    block3.captured_xxx = xxx;
    block3.captured_swipe = swipe; // byte
    block3.captured_movesToTrash = w26; // byte, from deleteMovesToTrashForMessage
    x27 = &block3;
    w26 = 0x2; // orr w26, wzr, #0x2
    goto jump_B_124;

jump_B_3: // 0x10009bfe4
    x23 = [message conversationFlags];
    x25 = x23 & 1; //potentially useless?
    x0 = [NSBundle mainBundle];
    x1 = @selector(localizedStringForKey:value:table:);
    if (w23 & 1 != 0) goto 0x10009c238;

    x2 = @"NOTIFY_ME_ELLIPSIS";
    goto 0x10009c240;

}
