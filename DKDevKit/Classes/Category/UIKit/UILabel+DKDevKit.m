//
// Created by NaCai on 16/8/28.
//

#import "UILabel+DKDevKit.h"


@implementation UILabel (DKDevKit)

- (void)alignCenter {
    self.textAlignment = NSTextAlignmentCenter;
}
- (void)alignRight {
    self.textAlignment = NSTextAlignmentRight;
}
- (void)mutiLines {
    self.numberOfLines = 0;
}
@end