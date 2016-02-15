/*
 * This file was manually decompiled from MobileMail, iOS 9.0.2, arm64.
 *
 * Original code (c) 2015 Apple, Inc.
 * Decompilation (c) 2016 Nicolás Alvarez
 */

#include <UIKit/UIKit.h>

struct Block_literal_1 {
    void *isa; // initialized to &_NSConcreteStackBlock or &_NSConcreteGlobalBlock
    int flags;
    int reserved;
    void (*invoke)(void *, ...);
    struct Block_descriptor_1 {
        unsigned long int reserved;     // NULL
        unsigned long int size;         // sizeof(struct Block_literal_1)
        // optional helper functions
        void (*copy_helper)(void *dst, void *src);     // IFF (1<<25)
        void (*dispose_helper)(void *src);             // IFF (1<<25)
        // required ABI.2010.3.16
        const char *signature;                         // IFF (1<<30)
    } *descriptor;
    // imported variables
};

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

    w28 = 0xc2000000 // from "movz w28, #0xc200, lsl #16"; I don't know if that's correct
    if (action > 5) goto L1;

/* TODO; involves jumptable
000000010009bd34         movz       x0, #0x0
000000010009bd38         adr        x9, #0x10009c384
000000010009bd3c         nop
000000010009bd40         ldrsw      x10, [x9, x19, lsl #2]
000000010009bd44         add        x9, x10, x9
000000010009bd48         br         x9
*/

    L1: // 0x10009bd4c
    if (action > 6) goto L2;

    //0x10009bd54
    x23 = [[NSBundle mainBundle] localizedStringForKey: @"PREVIEW_SWIPE_ARCHIVE" value:"" table:"Main-OrbHW"];

    w24 = 0;
    Block_literal_1 myBlock;
    myBlock.isa = &_NSConcreteStackBlock;
    myBlock.flags = w28;
    myBlock.reserved = 0;
    myBlock.invoke = 0x10009c82c;
    myBlock.descriptor = 0x1001fe1e0;
    myBlock.imported1 = self;
    myBlock.imported2 = message;
    myBlock.imported3 = x25;
    myBlock.imported4 = swipe; // 8-bit
    x27 = &myBlock;
    w26 = 0x2; // orr w26, wzr, #0x2
    goto jump_A_124;

    L2: // 0x10009bdd8
}
