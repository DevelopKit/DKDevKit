//
//  Created by ZhaiQiang on 16/8/29.
//

#import <Foundation/Foundation.h>

@interface DKListViewDataSource : NSObject <UITableViewDataSource>

/**
 *  Real dataSourse of UIScrollView.
 */
@property (nonatomic, weak) id realDataSource;

@property (nonatomic, copy) NSString *identifier;
/**
 *  Return the number of section.
 */
@property (nonatomic, copy) NSInteger(^sectionNumberInListView)(UIScrollView *view);

/**
 *  Return the number of section.
 */
@property (nonatomic, copy) NSInteger(^itemNumberInSectionInListView)(UIScrollView *view, NSInteger section);

/**
 *  Item configure block.
 */
@property (nonatomic, copy) UIView *(^factoryItemInListView)(UIScrollView *view,NSIndexPath *indexPath);

@property (nonatomic, copy) void (^configureItemInListView)(__kindof UIView *view, id item);


- (void)configureItemWithReuseIdentifier:(NSString *)identifier
                              inListView:(__kindof UIScrollView *)scrollView
                                   block:(void(^)(__kindof UIView *cell, id item))config;

- (void)configureItemWithDataSource:(NSMutableArray *)dataSource
                   reuserIdentifier:(NSString *)identifier
                         inListView:(__kindof UIScrollView *)scrollView
                              block:(void(^)(__kindof UIView *cell, id item))config;
@end
