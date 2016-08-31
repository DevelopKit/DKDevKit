

#import "DKTableViewDataSource.h"

@interface DKTableViewDataSource()
@property (nonatomic, copy) NSMutableArray *lists;

@end

@implementation DKTableViewDataSource



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemNumberInSectionInListView(tableView,section);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.identifier forIndexPath:indexPath];

    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.sectionNumberInListView) {
        return self.sectionNumberInListView(tableView);
    }
    return 1;
}

@end
