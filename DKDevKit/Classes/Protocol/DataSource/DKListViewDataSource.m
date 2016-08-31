//
//  Created by ZhaiQiang on 16/8/29.
//

#import "DKListViewDataSource.h"
#import "UITableView+DKDevKit.h"


@interface DKListViewDataSource()
@property (nonatomic, copy) NSMutableArray *lists;

@end

@implementation DKListViewDataSource
-(void)configureItemWithReuseIdentifier:(NSString *)identifier inListView:(__kindof UIScrollView *)scrollView block:(void (^)(__kindof UIView *view, id item))config{
    if ([scrollView isKindOfClass:[UITableView class]]) {
        UITableView *view = (UITableView *) scrollView;
        [view registerCell:identifier forIdentifier:identifier];
    } else {
        UICollectionView *view = (UICollectionView *)scrollView;
    }
    self.identifier = identifier;
    self.configureItemInListView = [config copy];
}

- (void)configureItemWithDataSource:(NSMutableArray *)dataSource
                   reuserIdentifier:(NSString *)identifier
                         inListView:(__kindof UIScrollView *)scrollView
                              block:(void (^)(__kindof UIView *cell, id item))config {

    if ([scrollView isKindOfClass:[UITableView class]]) {
        UITableView *view = (UITableView *) scrollView;
        [view registerCell:identifier forIdentifier:identifier];
    } else {
        UICollectionView *view = (UICollectionView *)scrollView;
//        [view ]
    }
    self.lists = dataSource;
    self.identifier = identifier;
    self.configureItemInListView = [config copy];
}

- (void)configureItemWithDataSource:(NSMutableArray *)dataSource
                         inListView:(__kindof UIScrollView *)scrollView
                              block:(void (^)(__kindof UIView *cell, id item))config{
    [self configureItemWithDataSource:dataSource
                     reuserIdentifier:[scrollView isKindOfClass:[UITableView class]]?@"UITableViewCell":@"UICollectionViewCell"
                           inListView:scrollView
                                block:config];
}
#pragma mark - UITableView dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.lists) {return self.lists.count;}
    return self.itemNumberInSectionInListView(tableView,section);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.lists) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.identifier forIndexPath:indexPath];
        NSUInteger idx = (NSUInteger)indexPath.row;
        if (self.sectionNumberInListView) {idx = (NSUInteger)indexPath.section;}
        id item = self.lists[idx];
        if (self.configureItemInListView) {
            self.configureItemInListView(tableView,item);
        } else {
            NSAssert(NO,@"you should config a block");
        }
    } else if (self.factoryItemInListView){
        return (UITableViewCell *)self.factoryItemInListView(tableView,indexPath);
    }

    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.sectionNumberInListView) {
        return self.sectionNumberInListView(tableView);
    }
    return 1;
}
@end
