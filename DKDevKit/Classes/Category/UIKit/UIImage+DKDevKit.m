//
// Created by NaCai on 16/8/28.
//

#import "UIImage+DKDevKit.h"


@implementation UIImage (DKDevKit)

- (CGFloat)sizeWidth {
    return self.size.width;
}
- (CGFloat)sizeHeight {
    return self.size.height;
}

+ (instancetype)imageWithTintColor:(UIColor *)color expectedSize:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end