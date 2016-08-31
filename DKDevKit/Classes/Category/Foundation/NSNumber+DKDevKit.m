//
// Created by NaCai on 16/8/29.
// Copyright (c) 2016 ZhaiQiang. All rights reserved.
//

#import "NSNumber+DKDevKit.h"


@implementation NSNumber (DKDevKit)
@end


@implementation NSNumber (DKDiskSizeTransform)

-(NSString *)diskSize{
    double convertedValue = self.longLongValue;
    int multiplyFactor = 0;

    NSArray *tokens = @[@"bytes", @"KB", @"MB", @"GB", @"TB"];

    while (convertedValue > 1024) {
        convertedValue /= 1024;
        multiplyFactor++;
    }

    return [NSString stringWithFormat:@"%4.2f %@",convertedValue, [tokens objectAtIndex:multiplyFactor]];

}

@end