//
//  UIView+DKDevKit.m
//  Pods
//
//  Created by ZhaiQiang on 16/8/28.
//
//

#import <Foundation/Foundation.h>

@interface DKTableViewDataSource : NSObject <UITableViewDataSource>

/**
 *  Real dataSourse of UITableView.
 */
@property (nonatomic, weak, readwrite) id realDataSource;

/**
 *  Init method.
 *
 *  @param cellIdentifier the identifier of cells.
 *
 *  @return dataSourse instance.
 */
- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier;

/**
 *  Return the number of row in section.
 */
@property (nonatomic, copy) NSInteger(^cb_numberOfRowsInSectionBlock)(UITableView *t, NSInteger section);

/**
 *  Return the number of section.
 */
@property (nonatomic, copy) NSInteger(^cb_numberOfSectionBlock)(UITableView *t);

/**
 *  Title for section hearder.
 */
@property (nonatomic, copy) NSString *(^cb_titleForHeaderInSectionBlock)(UITableView *t, NSInteger section);

/**
 *  Title for section footer.
 */
@property (nonatomic, copy) NSString *(^cb_titleForFooterInSectionBlock)(UITableView *t, NSInteger section);

/**
 *  Cell data configure block.
 */
@property (nonatomic, copy, readwrite) void(^cb_tableViewCellConfigureBlock)(id cell, NSIndexPath *indexPath);

@end
