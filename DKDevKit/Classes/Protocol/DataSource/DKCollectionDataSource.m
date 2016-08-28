//
//  UIView+DKDevKit.m
//  Pods
//
//  Created by ZhaiQiang on 16/8/28.
//
//

#import "DKCollectionDataSource.h"
#import "DKMacros.h"

@interface DKCollectionDataSource()


@end

@implementation DKCollectionDataSource



#pragma mark - UICollection dataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    if (self.itemNumberInSectionInCollectionView) {
        return self.itemNumberInSectionInCollectionView(collectionView,section);
    } else if (RESPONSE_TO_SELECTOR(_realDataSource, @selector(collectionView:numberOfItemsInSection:))) {
        return [_realDataSource collectionView:collectionView numberOfItemsInSection:section];
    } else{
        NSAssert(NO,@"you SHOULD set a block or delegate");
        return 0;
    }
} 

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.factoryItemInCollectionView) {
        return self.factoryItemInCollectionView(collectionView,indexPath);
    } else if (self.configureItemInCollectionView) {
        return nil;
    } else if (RESPONSE_TO_SELECTOR(_realDataSource,@selector(collectionView:cellForItemAtIndexPath:))) {
        return [_realDataSource collectionView:collectionView cellForItemAtIndexPath:indexPath];
    } else {
        NSAssert(NO,@"you SHOULD set a block or delegate");
        return nil;
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    if (self.sectionNumberInCollectionView) {
        return self.sectionNumberInCollectionView(collectionView);
    } else if (RESPONSE_TO_SELECTOR(_realDataSource,@selector(numberOfSectionsInCollectionView:))) {
        return [_realDataSource numberOfSectionsInCollectionView:collectionView];
    }
}

@end
