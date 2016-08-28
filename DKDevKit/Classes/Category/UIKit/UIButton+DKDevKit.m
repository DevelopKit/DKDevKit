//
// Created by NaCai on 16/8/28.
//

#import "UIButton+DKDevKit.h"


@implementation UIButton (DKDevKit)

+ (instancetype)button{
    return [UIButton buttonWithType:UIButtonTypeSystem];
}

+ (instancetype)buttonWithTitle:(NSString *)title {
    return nil;
}

- (void)setNormalTitle:(NSString *)title titleColor:(UIColor *)color{
    [self setTitle:title forState:UIControlStateNormal];
    if (color) {
        [self setTitleColor:color forState:UIControlStateNormal];
    }
}
- (void)setNormalImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
}
- (void)setHighlightTitle:(NSString *)title titleColor:(UIColor *)color{
    [self setTitle:title forState:UIControlStateHighlighted];
    if (color) {
        [self setTitleColor:color forState:UIControlStateHighlighted];
    }
}
- (void)setHighlightImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateHighlighted];
}
- (void)setSelectTitle:(NSString *)title titleColor:(UIColor *)color{
    [self setTitle:title forState:UIControlStateSelected];
    if (color) {
        [self setTitleColor:color forState:UIControlStateSelected];
    }
}
- (void)setSelectImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateSelected];
}
- (void)setDisableTitle:(NSString *)title titleColor:(UIColor *)color{
    [self setTitle:title forState:UIControlStateDisabled];
    if (color) {
        [self setTitleColor:color forState:UIControlStateDisabled];
    }
}
- (void)setDisableImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateDisabled];
}
@end