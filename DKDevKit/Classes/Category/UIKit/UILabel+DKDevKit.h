//
// Created by NaCai on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface UILabel (DKDevKit)
+ (instancetype)label;
+ (instancetype)labelWithText:(NSString *)text;

- (void)alignCenter;
- (void)alignRight;
- (void)mutiLines;
@end