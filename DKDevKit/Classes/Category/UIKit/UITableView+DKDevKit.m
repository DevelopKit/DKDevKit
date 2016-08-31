//
// Created by NaCai on 16/8/29.
//

#import "UITableView+DKDevKit.h"
#import "DKTableViewDataSource.h"
#import "DKTableViewDelegate.h"


@implementation UITableView (DKDevKit)

+ (instancetype)tableView{
    return [self tableViewWithStyle:UITableViewStylePlain];
}

+ (instancetype)tableViewWithStyle:(UITableViewStyle)style{
    return [[UITableView alloc] initWithFrame:CGRectZero style:style];
}

- (void)configureDataSource:(void (^)(DKTableViewDataSource *dataSource))config{
    DKTableViewDataSource *listViewDataSource = [DKTableViewDataSource new];
    config(listViewDataSource);
    self.dataSource = listViewDataSource;
}
- (void)configureDelegate:(void (^)(DKTableViewDelegate *delegate))config{

}

@end

@implementation UITableView (DKCellRegister)

- (void)registerCell:(NSString *)cellClassName forIdentifier:(NSString *)identifier{
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    if (nib) {
        [self registerNib:nib forCellReuseIdentifier:identifier];
    } else {
        [self registerClass:NSClassFromString(identifier) forCellReuseIdentifier:identifier];
    }
}
@end