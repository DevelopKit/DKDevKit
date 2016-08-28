//
// Created by NaCai on 16/8/28.
//

#import "UIControl+DKDevKit.h"
#import "UIControl+RACSignalSupport.h"
#import "RACSignal.h"


@implementation UIControl (DKDevKit)

- (void)touchUpInside:(void (^) (UIControl *control))block{
    [[self rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:block];
}

- (void)touchDown:(void (^) (UIControl *control))block{
    [[self rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:block];
}

- (void)valueChange:(void (^) (UIControl *control))block{
    [[self rac_signalForControlEvents:UIControlEventValueChanged] subscribeNext:block];
}

@end