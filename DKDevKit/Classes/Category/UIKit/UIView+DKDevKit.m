//
//  UIView+DKDevKit.m
//  Pods
//
//  Created by ZhaiQiang on 16/8/28.
//
//

#import "UIView+DKDevKit.h"
#import <Masonry/Masonry.h>
#import "ReactiveCocoa.h"

@implementation UIView (DKDevKit)

- (instancetype)configure:(void (^)(__kindof UIView *v))config {
    if (config) {config(self);}
    return self;
}

- (instancetype)layout:(void (^)(__kindof UIView *v))layout {
    if (layout) {layout(self);}
    return self;
}

- (instancetype)layoutWithMasonry:(void (^)(MASConstraintMaker *make))maker {
    if (maker) {
        [self mas_makeConstraints:maker];
    }
    return self;
}

- (instancetype)addToSuperView:(__kindof UIView *)superView {
    [superView addSubview:self];
    return self;
}


@end


@implementation UIView (DKGesture)

- (void)whenTapWithTaps:(NSUInteger)taps touches:(NSUInteger)touched action:(void (^) (id x))block{
    if (!self.userInteractionEnabled) {self.userInteractionEnabled = YES;}
    UITapGestureRecognizer *tapGestureRecognizer = [UITapGestureRecognizer new];
    tapGestureRecognizer.numberOfTapsRequired = taps;
    tapGestureRecognizer.numberOfTouchesRequired = touched;
    [[tapGestureRecognizer rac_gestureSignal] subscribeNext:block];
    [self addGestureRecognizer:tapGestureRecognizer];
}
- (void)whenSingleTap:(void (^) (id x))block{
    [self whenTapWithTaps:1 touches:1 action:block];
}
- (void)whenDoubleTap:(void (^) (id x))block{
    [self whenTapWithTaps:2 touches:1 action:block];
}
@end



@implementation UIView (DKShape)
- (void)makeCorner:(CGFloat)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
}
- (void)makeCorner:(CGFloat)cornerRadius clipToBounds:(BOOL)clip{
    [self makeCorner:cornerRadius];
    self.clipsToBounds = clip;
}
@end