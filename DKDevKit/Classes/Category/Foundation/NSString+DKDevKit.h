//
//  NSString+DKDevKit.h
//  Pods
//
//  Created by NaCai on 16/8/28.
//
//

#import <Foundation/Foundation.h>

@interface NSString (DKDevKit)


- (NSString *)MD5Encode;

- (BOOL)isPhoneFormat;

- (BOOL)isEmailFormat;
@end
