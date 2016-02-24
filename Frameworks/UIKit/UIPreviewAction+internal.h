/*
 * UIKit, iOS 9.0.2, arm64
 * Partially based on classdump output.
 *
 * Original code (c) 2015 Apple, Inc.
 * Decompilation (c) 2016 Nicolás Alvarez
 */

#import <UIKit/UIKit.h>

@interface UIPreviewAction (Internal)
// private constructors
+ (instancetype)_actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style color:(UIColor*)color image:(UIImage*)image handler:(void (^)(UIPreviewAction *action, UIViewController *previewViewController))handler;
+ (instancetype)_actionWithTitle:(NSString *)title style:(UIPreviewActionStyle)style image:(UIImage*)image handler:(void (^)(UIPreviewAction *action, UIViewController *previewViewController))handler;
+ (instancetype)_actionWithTitle:(NSString *)title color:(UIColor*)color image:(UIImage*)image handler:(void (^)(UIPreviewAction *action, UIViewController *previewViewController))handler;

@end
