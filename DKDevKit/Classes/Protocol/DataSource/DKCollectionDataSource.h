//
//  UIView+DKDevKit.m
//  Pods
//
//  Created by ZhaiQiang on 16/8/28.
//
//

#import <Foundation/Foundation.h>

@interface DKCollectionDataSource : NSObject <UICollectionViewDataSource>

/**
 *  Real dataSourse of UITableView.
 */
@property (nonatomic, weak) id realDataSource;


/**
 *  Return the number of section.
 */
@property (nonatomic, copy) NSInteger(^itemNumberInSectionInCollectionView)(UICollectionView *collectionView, NSInteger section);

/**
 *  Item configure block.
 */
@property (nonatomic, copy) void(^configureItemInCollectionView)(UICollectionViewCell *cell);
@property (nonatomic, copy) UICollectionViewCell *(^factoryItemInCollectionView)(UICollectionView *collectionView,NSIndexPath *indexPath);


/**
 *  Return the number of section.
 */
@property (nonatomic, copy) NSInteger(^sectionNumberInCollectionView)(UICollectionView *collectionView);

- (void)configureItemWithReuseIdentifier:(NSString *)identifier inCollectionView:(UICollectionView *)collectionView block:(void(^)(UICollectionViewCell *cell))config;
@end
