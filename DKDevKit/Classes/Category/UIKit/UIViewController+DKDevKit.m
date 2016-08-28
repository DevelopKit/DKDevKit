//
// Created by NaCai on 16/8/28.
//

#import "UIViewController+DKDevKit.h"


@implementation UIViewController (DKDevKit)

- (void)dismiss{
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end