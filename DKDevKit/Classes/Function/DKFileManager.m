//
//  DKFileManager.m
//  Pods
//
//  Created by NaCai on 16/8/29.
//  Copyright © 2016年 ZhaiQiang. All rights reserved.
//

#import "DKFileManager.h"

@implementation DKFileManager

@end

static NSString *homePath(){
    return NSHomeDirectory();
}

static NSString *appPath(){
    return [[NSBundle mainBundle] bundlePath];
}

static NSString *tmpPath(){
    return [[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES)objectAtIndex:0] stringByAppendingFormat:@"/tmp"];
}

static NSString *documentPath(){
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

static NSString *resourcePath(){
    return [[NSBundle mainBundle] resourcePath];
}

static NSString *cachePath(){
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)objectAtIndex:0];
}

static NSString *preferencePath(){
    return [[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES)objectAtIndex:0] stringByAppendingFormat:@"/Preference"];
}