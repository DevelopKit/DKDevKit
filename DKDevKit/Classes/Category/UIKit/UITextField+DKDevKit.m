//
// Created by NaCai on 16/8/28.
//

#import "UITextField+DKDevKit.h"


@implementation UITextField (DKDevKit)

- (void)setPlaceholderColor:(UIColor *)color fontSize:(CGFloat)size{
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder
                                                                 attributes:@{
                                                                         NSForegroundColorAttributeName:color,
                                                                         NSFontAttributeName:[UIFont systemFontOfSize:size]}];
}
- (void)setPlaceholderColor:(UIColor *)color{
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder
                                                                 attributes:@{NSForegroundColorAttributeName:color}];
}
@end