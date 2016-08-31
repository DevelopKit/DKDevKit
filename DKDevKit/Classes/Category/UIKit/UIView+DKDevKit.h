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

/**
 * config the view attribute
 * @param config block
 * @return self
 */
- (instancetype)configure:(void (^) (__kindof UIView *v))config;

/**
 * layout the view
 * @param layout block
 * @return self
 */
- (instancetype)layout:(void (^) (__kindof UIView *v))layout;
- (instancetype)layoutWithMasonry:(void (^) (MASConstraintMaker *make))maker;

- (instancetype)addToSuperView:(__kindof UIView *)superView;

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