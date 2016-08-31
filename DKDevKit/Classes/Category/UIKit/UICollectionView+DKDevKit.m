//
// Created by NaCai on 16/8/29.
// Copyright (c) 2016 ZhaiQiang. All rights reserved.
//

#import "UICollectionView+DKDevKit.h"


@implementation UICollectionView (DKDevKit)

- (void)scrollVertical {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.collectionViewLayout;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
}
@end


@implementation UICollectionView (DKCellRegister)

- (void)registerCell:(NSString *)cellClassName forIdentifier:(NSString *)identifier{
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    if (nib) {
        [self registerNib:nib forCellWithReuseIdentifier:identifier];
    } else {
        [self registerClass:NSClassFromString(identifier) forCellWithReuseIdentifier:identifier];
    }
}
@end