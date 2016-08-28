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
 *  Init method.
 *
 *  @param cellIdentifier the identifier of cells.
 *
 *  @return dataSourse instance.
 */
- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier;


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


@end
