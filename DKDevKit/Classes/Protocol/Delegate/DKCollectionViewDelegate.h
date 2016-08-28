//
//  Created by ZhaiQiang on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface CBCollectionViewDelegate : NSObject <UICollectionViewDelegate>

/**
 *  Real delegate of UIScrollView.
 */
@property (nonatomic, weak, readwrite) id realDelegate;

/**
 *  Did select aItem.
 */
@property (nonatomic, copy, readwrite) void(^cb_didSelectItemAtIndexPathBlock)(UICollectionView *c);

/**
 *  Did unSelect aItem.
 */
@property (nonatomic, copy, readwrite) void(^cb_didDeselectItemAtIndexPathBlock)(UICollectionView *c);

/**
 *  Should show menu for aItem.
 */
@property (nonatomic, copy, readwrite) BOOL(^cb_shouldShowMenuForItemAtIndexPathBlock)(UICollectionView *c, NSIndexPath *indexPath);

/**
 *  Can perform action.
 */
@property (nonatomic, copy, readwrite) BOOL(^cb_canPerformActionBlock)(UICollectionView *c, SEL action, NSIndexPath *indexPath, id sender);

/**
 *  Perform action.
 */
@property (nonatomic, copy, readwrite) void(^cb_performActionBlock)(UICollectionView *c, SEL action, NSIndexPath *indexPath, id sender);

/**
 *  Will display cells.
 */
@property (nonatomic, copy, readwrite) void(^cb_willDisplayCellBlock)(UICollectionView *c, UICollectionViewCell *cell, NSIndexPath *indexPath);

/**
 *  Will display supplementary view.
 */
@property (nonatomic, copy, readwrite) void(^cb_willDisplaySupplementaryViewBlock)(UICollectionView *c, UICollectionReusableView *view, NSString *elementKind, NSIndexPath *indexPath);

/**
 *  Did end displaying cell.
 */
@property (nonatomic, copy, readwrite) void(^cb_didEndDisplayingCellBlock)(UICollectionView *c, UICollectionViewCell *cell, NSIndexPath *indexPath);

/**
 *  Did end displaying supplementary view.
 */
@property (nonatomic, copy, readwrite) void(^cb_didEndDisplayingSupplementaryViewBlock)(UICollectionView *c, UICollectionReusableView *view, NSString *elementKind, NSIndexPath *indexPath);

@end
