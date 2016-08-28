//
// Created by NaCai on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface UIImage (DKDevKit)

@property(nonatomic, assign) CGFloat sizeWidth;
@property(nonatomic, assign) CGFloat sizeHeight;

+ (instancetype)imageWithTintColor:(UIColor *)color
                      expectedSize:(CGSize)size;


@end