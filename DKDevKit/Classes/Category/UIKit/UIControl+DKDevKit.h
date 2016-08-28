//
// Created by NaCai on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface UIControl (DKDevKit)

- (void)touchUpInside:(void (^)(UIControl *control))block;

- (void)touchDown:(void (^)(UIControl *control))block;

- (void)valueChange:(void (^)(UIControl *control))block;

@end