/*
 * This file was manually decompiled from MobileMail, iOS 9.0.2, arm64.
 *
 * Original code (c) 2015 Apple, Inc.
 * Decompilation (c) 2016 Nicolás Alvarez
 */

#include <UIKit/UIKit.h>

-(UIPreviewAction*)_previewActionForSwipeAction: (unsigned long long)action
                                    withMessage: (id)message
                                       forSwipe: (BOOL)swipe
{
    x20 = swipe
    x21 = message
    x19 = action
    x22 = self

    x25 = [self presentingViewController];
    if (x25 == 0) {
        x25 = [[UIApplication] sharedApplication] sceneController];
    }

    w28 = 0xc2000000 // from "movz w28, #0xc200, lsl #16"; I don't know if that's correct
    x8 = x19 - 5 // _shiftedAction = action - 5
    if (x8 > 0) goto L1;

/* TODO; involves jumptable
000000010009bd34         movz       x0, #0x0
000000010009bd38         adr        x9, #0x10009c384
000000010009bd3c         nop
000000010009bd40         ldrsw      x10, [x9, x19, lsl #2]
000000010009bd44         add        x9, x10, x9
000000010009bd48         br         x9
*/

    L1: // 0x10009bd4c
    if (x8 > 1) goto L2;

    // TODO

    L2: // 0x10009bdd8
}
