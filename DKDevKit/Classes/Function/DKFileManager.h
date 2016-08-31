//
//  DKFileManager.h
//  Pods
//
//  Created by NaCai on 16/8/29.
//  Copyright © 2016年 ZhaiQiang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 应用程序目录的路径，在该目录下有三个文件夹：Documents、Library、temp以及一个.app包！该目录下就是应用程序的沙盒，应用程序只能访问该目录下的文件夹！！！
 */
static NSString *homePath();

/**
 * .app 程序相对目录，不能存任何东西
 */
static NSString *appPath();

/**
 * 缓存目录，APP退出后，系统可能会删除这里的内容
 */
static NSString *tmpPath();

/**
 * 文档目录，需要ITUNES同步备份的数据存这里
 */
static NSString *documentPath();

/**
 * .app 程序绝对目录，不能存任何东西
 */
static NSString *resourcePath();

/**
 * 缓存目录，系统永远不会删除这里的文件，ITUNES会删除
 */
static NSString *cachePath();

/**
 * 配置目录，配置文件存这里
 */
static NSString *preferencePath();

@interface DKFileManager : NSObject

@end
