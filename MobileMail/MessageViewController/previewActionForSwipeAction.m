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
    if (x8 > 0) goto L1; // if (action > 5)

/* TODO; involves jumptable
000000010009bd34         movz       x0, #0x0
000000010009bd38         adr        x9, #0x10009c384
000000010009bd3c         nop
000000010009bd40         ldrsw      x10, [x9, x19, lsl #2]
000000010009bd44         add        x9, x10, x9
000000010009bd48         br         x9
*/

    L1: // 0x10009bd4c
    if (x8 > 1) goto L2; // if (action > 6)

    //0x10009bd54
    x23 = [[NSBundle mainBundle] localizedStringForKey: @"PREVIEW_SWIPE_ARCHIVE" value:"" table:"Main-OrbHW"];

    // This is initializing a block_literal struct
    w24 = 0;
    var_110 = _NSConcreteStackBlock; //64-bit
    var_118 = w28; // 32-bit
    var_11c = 0x00000000; // 32-bit, wzr
    var_120 = 0x10009c82c; // 64-bit
    var_128 = 0x1001fe1e0; // 64-bit
    var_148 = w20; // 8-bit
    var_130 = x22; // both 64-bit; these come from a STP that I'm not sure about
    var_138 = x21;
    var_140 = x25;
    x27 = &var_110;
    w26 = 0x2; // orr w26, wzr, #0x2
    goto jump_A_124;

    L2: // 0x10009bdd8
}
