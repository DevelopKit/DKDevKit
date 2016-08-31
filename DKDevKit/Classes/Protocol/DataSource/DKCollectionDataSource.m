//
//  Created by ZhaiQiang on 16/8/28.
//

#import "DKCollectionDataSource.h"
#import "DKMacros.h"

@interface DKCollectionDataSource()

@property (nonatomic, copy) void(^configureItemInCollectionView)(UICollectionViewCell *cell);
@property (nonatomic, copy) NSString *reuseIdentifier;
@end

@implementation DKCollectionDataSource

#pragma mark - Public methods
- (void)configureItemWithReuseIdentifier:(NSString *)identifier
                        inCollectionView:(UICollectionView *)collectionView
                                   block:(void (^)(UICollectionViewCell *cell))config {
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    if (nib) {
        [collectionView registerNib:nib forCellWithReuseIdentifier:identifier];
    } else {
        [collectionView registerClass:NSClassFromString(identifier) forCellWithReuseIdentifier:identifier];
    }
    self.reuseIdentifier = identifier;
    self.configureItemInCollectionView = config;
}

#pragma mark - UICollection dataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    if (self.itemNumberInSectionInListView) {
        return self.itemNumberInSectionInListView(collectionView,section);
    } else if (RESPONSE_TO_SELECTOR(self.realDataSource, @selector(collectionView:numberOfItemsInSection:))) {
        return [self.realDataSource collectionView:collectionView numberOfItemsInSection:section];
    } else{
        NSAssert(NO,@"you SHOULD set a block or delegate");
        return 0;
    }
} 

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.factoryItemInListView) {
        return self.factoryItemInListView(collectionView,indexPath);
    } else if (self.configureItemInCollectionView) {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.reuseIdentifier forIndexPath:indexPath];
        self.configureItemInCollectionView(cell);
        return cell;
    } else if (RESPONSE_TO_SELECTOR(self.realDataSource,@selector(collectionView:cellForItemAtIndexPath:))) {
        return [self.realDataSource collectionView:collectionView cellForItemAtIndexPath:indexPath];
    } else {
        NSAssert(NO,@"you SHOULD set a block or delegate");
        return nil;
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    if (self.sectionNumberInListView) {
        return self.sectionNumberInListView(collectionView);
    } else if (RESPONSE_TO_SELECTOR(self.realDataSource,@selector(numberOfSectionsInCollectionView:))) {
        return [self.realDataSource numberOfSectionsInCollectionView:collectionView];
    }
    return 1;
}

@end
