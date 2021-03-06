/*
 * MobileMail, iOS 9.0.2, arm64
 * Partially based on classdump output.
 *
 * Original code (c) 2015 Apple, Inc.
 * Decompilation (c) 2016 Nicolás Alvarez
 */

#import <MobileMail/MessageMiniMall.h>
#import <UIKit/UIViewController.h>

@class MFMailMessage;

@interface MessageViewController : UIViewController

@property (nonatomic,retain) MessageMiniMall* mall;

-(UIPreviewAction*)_previewActionForSwipeAction: (unsigned long long)action
                                    withMessage: (MFMailMessage*)message
                                       forSwipe: (BOOL)swipe;
@end
