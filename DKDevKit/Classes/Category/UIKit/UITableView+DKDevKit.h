//
// Created by NaCai on 16/8/29.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class DKTableViewDataSource;
@class DKTableViewDelegate;

@interface UITableView (DKDevKit)

+ (instancetype)tableView;

+ (instancetype)tableViewWithStyle:(UITableViewStyle)style;

- (void)configureDataSource:(void (^)(DKTableViewDataSource *dataSource))config;

- (void)configureDelegate:(void (^)(DKTableViewDelegate *delegate))config;
@end

@interface UITableView (DKCellRegister)
- (void)registerCell:(NSString *)cellClassName forIdentifier:(NSString *)identifier;
@end