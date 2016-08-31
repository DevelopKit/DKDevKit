//
//  Created by ZhaiQiang on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface DKTableViewDelegate : NSObject <UITableViewDelegate>

/**
 *  Real delegate of UITableView.
 */
@property (nonatomic, weak, readwrite) id realDelegate;

/**
 *  Return the height of every row.
 */
@property (nonatomic, copy, readwrite) CGFloat(^cb_heightForRowBlock)(UITableView *t, NSIndexPath *indexPath);

/**
 *  Return the height of header.
 */
@property (nonatomic, copy, readwrite) CGFloat(^cb_heightForHeaderBlock)(UITableView *t, NSInteger section);

/**
 *  Return the height of footer.
 */
@property (nonatomic, copy, readwrite) CGFloat(^cb_heightForFooterBlock)(UITableView *t, NSInteger section);

/**
 *  Return the estimated height of every rows.
 */
@property (nonatomic, copy, readwrite) CGFloat(^cb_estimatedHeightForRowBlock)(UITableView *t, NSIndexPath *indexPath);

/**
 *  Return the estimated height of header.
 */
@property (nonatomic, copy, readwrite) CGFloat(^cb_estimatedHeightForHeaderBlock)(UITableView *t, NSInteger section);

/**
 *  Return the estimated height of footer.
 */
@property (nonatomic, copy, readwrite) CGFloat(^cb_estimatedHeightForFooterBlock)(UITableView *t, NSInteger section);

/**
 *  Called when cells are selected.
 */
@property (nonatomic, copy, readwrite) void(^cb_didSelectRowAtIndexPathBlock)(UITableView *t, id cell, NSIndexPath *indexPath);

/**
 *  Celled when cells are deselected.
 */
@property (nonatomic, copy, readwrite) void(^cb_didDeselectRowAtIndexPath)(UITableView *t, id cell, NSIndexPath *indexPath);

/**
 *  View for header block.
 */
@property (nonatomic, copy, readwrite) UIView *(^cb_viewForHeaderInSectionBlock)(UITableView *t, NSInteger section);

/**
 *  View for footer block.
 */
@property (nonatomic, copy, readwrite) UIView *(^cb_viewForFooterInSectionBlock)(UITableView *t, NSInteger section);

@end
