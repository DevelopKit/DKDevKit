//
// Created by NaCai on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface UIButton (DKDevKit)

+ (instancetype)button;

+ (instancetype)buttonWithTitle:(NSString *)title;


- (void)setNormalTitle:(NSString *)title titleColor:(UIColor *)color;

- (void)setNormalImage:(UIImage *)image;

- (void)setHighlightTitle:(NSString *)title titleColor:(UIColor *)color;

- (void)setHighlightImage:(UIImage *)image;

- (void)setSelectTitle:(NSString *)title titleColor:(UIColor *)color;

- (void)setSelectImage:(UIImage *)image;

- (void)setDisableTitle:(NSString *)title titleColor:(UIColor *)color;

- (void)setDisableImage:(UIImage *)image;
@end