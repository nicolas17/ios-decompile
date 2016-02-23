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

struct Block_literal_smxs {
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
struct Block_literal_sm {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor *descriptor;
    // imported variables
    id captured_self;
    id captured_message;
};
struct Block_literal_smxsm {
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
struct Block_literal_msx {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor *descriptor;
    // imported variables
    id captured_message;
    id captured_self;
    id captured_xxx;
};
struct Block_literal_smb {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor *descriptor;
    // imported variables
    id captured_self;
    id captured_message;
    BOOL captured_boolUnk;
};
struct Block_literal_sml {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor *descriptor;
    // imported variables
    id captured_self;
    id captured_message;
    unsigned long long captured_ulongUnk;
};

// at 0x1001fe1e0
static struct Block_descriptor block_descriptor_1 = {
    0,
    sizeof(struct Block_literal_smxs), // 0x39
    0x000000010009cb10,
    0x000000010009cb5c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe0f0
static struct Block_descriptor block_descriptor_2 = {
    0,
    sizeof(struct Block_literal_sm), // 0x30
    0x000000010009c3d0,
    0x000000010009c40c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe180
static struct Block_descriptor block_descriptor_3 = {
    0,
    sizeof(struct Block_literal_smxsm), // 0x3a
    0x000000010009c7a4,
    0x000000010009c7f0,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe2a0
static struct Block_descriptor block_descriptor_4 = {
    0,
    sizeof(struct Block_literal_sm), // 0x30
    0x000000010009ce10,
    0x000000010009ce4c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe2d0
static struct Block_descriptor block_descriptor_5 = {
    0,
    sizeof(struct Block_literal_sm), // 0x30
    0x000000010009ce98,
    0x000000010009ced4,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe120
static struct Block_descriptor block_descriptor_6 = {
    0,
    sizeof(struct Block_literal_sm), // 0x30
    0x000000010009c450,
    0x000000010009c48c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe230
static struct Block_descriptor block_descriptor_7 = {
    0,
    sizeof(struct Block_literal_msx), // 0x38
    0x000000010009cc60,
    0x000000010009ccac,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe240
static struct Block_descriptor block_descriptor_8 = {
    0,
    sizeof(struct Block_literal_smb), // 0x31
    0x000000010009cd00,
    0x000000010009cd3c,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

// at 0x1001fe270
static struct Block_descriptor block_descriptor_9 = {
    0,
    sizeof(struct Block_literal_sml), // 0x38
    0x000000010009cd88,
    0x000000010009cdc4,
    "v24@?0@\"UIPreviewAction\"8@\"UIViewController\"16"
};

@implementation MessageViewController

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
    x8 = action - 5;
    if (action > 5) goto L1;

    x0 = 0;
    switch (action) {
        case 0: goto jump_A_0;    // 0x10009c364
        case 1: goto L1;          // 0x10009bd4c
        case 2: goto Toggle_Read; // 0x10009be44
        case 3: goto Toggle_Flag; // 0x10009be88
        case 4: goto L1;          // 0x10009bd4c
        case 5: goto Msg_Delete;  // 0x10009becc
    }

L1: // 0x10009bd4c
    if ((unsigned)x8 > 1) goto L2;

    //0x10009bd54
    x23 = NSLocalizedStringFromTable(@"PREVIEW_SWIPE_ARCHIVE", @"Main-OrbHW", nil);

    w24 = 0;
    struct Block_literal_smxs block1;
    block1.isa = &_NSConcreteStackBlock;
    block1.flags = reusedBlockFlags;
    block1.reserved = 0;
    block1.invoke = 0x10009c82c;
    block1.descriptor = &block_descriptor_1;
    block1.captured_self = self;
    block1.captured_message = message;
    block1.captured_xxx = x25;
    block1.captured_swipe = swipe; // 8-bit
    x27 = &block1;
    w26 = 0x2; // orr w26, wzr, #0x2
    goto jump_B_124;

L2: // 0x10009bdd8
    x23 = w24 = x26 = x27 = 0;
    x8 = action - 4;
    if ((unsigned)x8 > 7) goto jump_B_124;

    // 0x10009bdf4
    switch (x8) {
        case 0: goto Msg_Move;      // 0x10009be08
        case 1: goto jump_B_124;    // 0x10009c2f8
        case 2: goto jump_B_124;    // 0x10009c2f8
        case 3: goto Toggle_Notify; // 0x10009bfe4
        case 4: goto jump_B_124;    // 0x10009c2f8
        case 5: goto Msg_Reply;     // 0x10009c028
        case 6: goto Msg_Forward;   // 0x10009c084
        case 7: goto Msg_Junk;      // 0x10009c0f8
    }

Msg_Move: // 0x10009be08
    if (!swipe) {
        x23 = NSLocalizedStringFromTable(@"MOVE_SINGULAR", @"Main", nil);
    } else {
        x23 = NSLocalizedStringFromTable(@"PREVIEW_SWIPE_MOVE", @"Main-OrbHW", nil);
    }

    x26 = 0;
    w24 = 0;
    struct Block_literal_msx block7;
    block7.isa = &_NSConcreteStackBlock;
    block7.flags = reusedBlockFlags;
    block7.reserved = 0;
    block7.invoke = 0x10009cb98;
    block7.descriptor = &block_descriptor_7;
    block7.captured_message = message;
    block7.captured_self = self;
    block7.captured_xxx = xxx;
    x27 = &block7;
    goto jump_B_124;

Toggle_Read: // 0x10009be44
    x0 = [message messageFlags];
    x24 = x0 & 0x1;
    if (!swipe) {
        if (x24 == 0) {
            x23 = NSLocalizedStringFromTable(@"MARK_EMAIL_AS_READ", @"Main", nil);
        } else {
            x23 = NSLocalizedStringFromTable(@"MARK_EMAIL_UNREAD", @"Main", nil);
        }
    } else {
        if (!x24) {
            x23 = NSLocalizedStringFromTable(@"PREVIEW_SWIPE_MARK_AS_READ", @"Main-OrbHW", nil);
        } else {
            x23 = NSLocalizedStringFromTable(@"PREVIEW_SWIPE_MARK_AS_UNREAD", @"Main-OrbHW", nil);
        }
    }
    x26 = 0;
    struct Block_literal_sm block6; //at sp+0x190
    block6.isa = &_NSConcreteStackBlock;
    block6.flags = reusedBlockFlags;
    block6.reserved = 0;
    block6.invoke = 0x10009c43c;
    block6.descriptor = &block_descriptor_6;
    block6.captured_self = self;
    block6.captured_message = message;
    x27 = &block6;
    goto jump_B_124;

Toggle_Flag: // 0x10009be88
    x23 = [message messageFlags];
    x24 = (x23 >> 4) & 1; // ubfx x24, x23, #0x4, #0x1; is this useless?

    if (w23 & (1<<4) == 0) {
        x23 = NSLocalizedStringFromTable(@"MARK_EMAIL_FLAGGED", @"Main", nil);
    } else {
        x23 = NSLocalizedStringFromTable(@"MARK_EMAIL_UNFLAGGED", @"Main", nil);
    }

    x26 = 0;
    struct Block_literal_sm block2; // at sp+0x1c0
    block2.isa = &_NSConcreteStackBlock;
    block2.flags = reusedBlockFlags;
    block2.reserved = 0;
    block2.invoke = 0x10009c3bc;
    block2.descriptor = &block_descriptor_2;
    block2.captured_self = self;
    block2.captured_message = message;
    x27 = &block2;
    goto jump_B_124;

Msg_Delete: // 0x10009becc
    x26 = [self->_mall deleteMovesToTrashForMessage: message];
    if (w26 == 0) {
        x23 = NSLocalizedStringFromTable(@"PREVIEW_SWIPE_DELETE", @"Main-OrbHW", nil);
    } else {
        x23 = NSLocalizedStringFromTable(@"PREVIEW_SWIPE_TRASH", @"Main-OrbHW", nil);
    }

    x24 = 0;
    struct Block_literal_smxsm block3; // at sp+0x150
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

Toggle_Notify: // 0x10009bfe4
    x23 = [message conversationFlags];
    x25 = x23 & 1; //potentially useless?
    if (w23 & 1 != 0) {
        x23 = NSLocalizedStringFromTable(@"NOTIFY_ME_STOP", @"Main", nil);
    } else {
        x23 = NSLocalizedStringFromTable(@"NOTIFY_ME_ELLIPSIS", @"Main", nil);
    }

    x26 = 0;
    w24 = 0;
    struct Block_literal_smb block8;
    block8.isa = &_NSConcreteStackBlock;
    block8.flags = reusedBlockFlags;
    block8.reserved = 0;
    block8.invoke = 0x10009cce8;
    block8.descriptor = &block_descriptor_8;
    block8.captured_self = self;
    block8.captured_message = message;
    w8 = w25 xor 0x1;
    block8.captured_boolUnk = w8;
    x27 = &block8;
    goto jump_B_124;

Msg_Reply: // 0x10009c028
    x23 = [message canReplyAll];
    if (w23 == 0) {
        x23 = NSLocalizedStringFromTable(@"REPLY", @"Main", nil);
        x8 = 0;
    } else {
        x23 = NSLocalizedStringFromTable(@"REPLY_ALL", @"Main", nil);
        w8 = 0x1;
    }

    x26 = 0;
    w24 = 0;
    struct Block_literal_sml block9;
    block9.isa = &_NSConcreteStackBlock;
    block9.flags = reusedBlockFlags;
    block9.reserved = 0;
    block9.invoke = 0x10009cd6c;
    block9.descriptor = &block_descriptor_9;
    block9.captured_self = self;
    block9.captured_message = message;
    block9.captured_ulongUnk = x8; // ?!
    x27 = &block9;
    goto jump_B_124;

Msg_Forward: // 0x10009c084
    x23 = NSLocalizedStringFromTable(@"FORWARD", @"Main", nil);
    x26 = 0;
    w24 = 0;
    struct Block_literal_sm block4; // at sp+0x38
    block4.isa = &_NSConcreteStackBlock;
    block4.flags = reusedBlockFlags;
    block4.reserved = 0;
    block4.invoke = 0x10009cdf4;
    block4.descriptor = &block_descriptor_4;
    block4.captured_self = self;
    block4.captured_message = message;
    x27 = &block4;
    goto jump_B_124;

Msg_Junk: // 0x10009c0f8
    x23 = NSLocalizedStringFromTable(@"MARK_EMAIL_JUNK", @"Main", nil);
    x26 = 0;
    w24 = 0;
    struct Block_literal_sm block5; //at sp+0x8
    block5.isa = &_NSConcreteStackBlock;
    block5.flags = reusedBlockFlags;
    block5.reserved = 0;
    block5.invoke = 0x10009ce7c;
    block5.descriptor = &block_descriptor_5;
    block5.captured_self = self;
    block5.captured_message = message;
    x27 = &block5;
    goto jump_B_124;

jump_B_124: // 0x10009c2f8
    if (w20 == 0) {
        x20 = 0;
        x5 = 0;
    } else {
        x20 = [MFSwipeActionUtilities defaultColorForAction: action];
        x5 = [MFSwipeActionUtilities defaultIconForAction: action alternate: x24];
    }
    x0 = [UIPreviewAction _actionWithTitle:x23 style:x26 color:x20 image:x5 handler:x27];

jump_A_0: // 0x10009c364
    return x0;
}

@end
