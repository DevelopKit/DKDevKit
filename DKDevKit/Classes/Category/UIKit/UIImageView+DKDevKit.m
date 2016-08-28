//
// Created by NaCai on 16/8/28.
//

#import "UIImageView+DKDevKit.h"


@implementation UIImageView (DKDevKit)

+ (instancetype)imageViewWithInitializationImage:(id)image {
    UIImage *image1 = nil;
    if ([image isKindOfClass:[UIImage class]]) {
        image1 = image;
    } else if ([image isKindOfClass:[NSString class]]) {
        image1 = [UIImage imageNamed:image];
    }
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
    return imageView;
}

@end