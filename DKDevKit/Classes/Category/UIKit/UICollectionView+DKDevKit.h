//
// Created by NaCai on 16/8/29.
// Copyright (c) 2016 ZhaiQiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UICollectionView (DKDevKit)

- (void)scrollVertical;

@end


@interface UICollectionView (DKCellRegister)
- (void)registerCell:(NSString *)cellClassName forIdentifier:(NSString *)identifier;
@end