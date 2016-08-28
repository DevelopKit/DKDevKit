//
//  UIView+DKDevKit.h
//  Pods
//
//  Created by NaCai on 16/8/28.
//
//

#import <UIKit/UIKit.h>
@class MASConstraintMaker;

@interface UIView (DKDevKit)

- (void)configure:(void (^) (UIView *v))config;

- (void)layout:(void (^) (UIView *v))layout;
- (void)layoutWithMasonry:(void (^) (MASConstraintMaker *make))maker;

- (void)addToSuperView:(UIView *)superView;

@end


@interface UIView (DKGesture)


- (void)whenTapWithTaps:(NSUInteger)taps touches:(NSUInteger)touched action:(void (^)(id x))block;

- (void)whenSingleTap:(void (^)(id x))block;

- (void)whenDoubleTap:(void (^)(id x))block;
@end


@interface UIView (DKShape)

- (void)makeCorner:(CGFloat)cornerRadius;

- (void)makeCorner:(CGFloat)cornerRadius clipToBounds:(BOOL)clip;
@end