/*
 * UIKit, iOS 9.0.2, arm64
 * Partially based on classdump output.
 *
 * Original code (c) 2015 Apple, Inc.
 * Decompilation (c) 2016 Nicolás Alvarez
 */

#import <UIKit/UIViewController.h>

@interface UIPreviewAction (Internal)
// private constructors
+ (instancetype)_actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style color:(id)arg3 image:(id)arg4 handler:(void (^)(UIPreviewAction *action, UIViewController *previewViewController))handler;
+ (instancetype)_actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style image:(id)arg3 handler:(void (^)(UIPreviewAction *action, UIViewController *previewViewController))handler;
+ (instancetype)_actionWithTitle:(NSString *)title color:(id)arg2 image:(id)arg3 handler:(void (^)(UIPreviewAction *action, UIViewController *previewViewController))handler;

@end
