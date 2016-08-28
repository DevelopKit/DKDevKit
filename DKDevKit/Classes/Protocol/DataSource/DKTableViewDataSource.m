

#import "CBTableViewDataSourse.h"

@interface CBTableViewDataSourse()

@property (nonatomic, copy, readwrite) NSString *cellIdentifier;

@end

@implementation CBTableViewDataSourse

- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier {
    self = [super init];
    
    if (self) {
        _cellIdentifier = cellIdentifier;
    }
    
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numOfSection;
    
    if (_realDataSourse && [_realDataSourse respondsToSelector:@selector(tableView:numberOfRowsInSection:)]) {
        numOfSection = [_realDataSourse tableView:tableView numberOfRowsInSection:section];
    }else {
        if (_cb_numberOfRowsInSectionBlock) {

            numOfSection = _cb_numberOfRowsInSectionBlock(tableView, section);
        }else {
            NSAssert(_cb_numberOfRowsInSectionBlock, @"NumberOfRowsInSectionBlock can't be nil.");
        }
    }
    if (numOfSection <= 0) {
        numOfSection = 1;
    }
    return numOfSection;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    if (_realDataSourse && [_realDataSourse respondsToSelector:@selector(tableView:cellForRowAtIndexPath:)]) {
        cell = [_realDataSourse cellForRowAtIndexPath:indexPath];
    }else {
        if (_cb_tableViewCellConfigureBlock) {
            
            cell = [tableView dequeueReusableCellWithIdentifier:_cellIdentifier];
            
            if (!cell)
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:_cellIdentifier];
            
            if (_cb_tableViewCellConfigureBlock) {
                _cb_tableViewCellConfigureBlock(cell, indexPath);
            }
        }else {
            NSAssert(_cb_tableViewCellConfigureBlock, @"CellForRowAtIndexPathBlock can't be nil.");
        }
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSInteger numOfSection = 1;
    
    if (_realDataSourse && [_realDataSourse respondsToSelector:@selector(numberOfSectionsInTableView:)]) {
        numOfSection = [_realDataSourse numberOfSectionsInTableView:tableView];
    }else {
        if (_cb_numberOfSectionBlock) {
            numOfSection = _cb_numberOfSectionBlock(tableView);
        }
    }
    if (numOfSection <= 0) {
        numOfSection = 1;
    }
    return numOfSection;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *title;
    
    if (_realDataSourse && [_realDataSourse respondsToSelector:@selector(tableView:titleForHeaderInSection:)]) {
        title = [_realDataSourse tableView:tableView titleForHeaderInSection:section];
    }else {
        if (_cb_titleForHeaderInSectionBlock) {
            title = _cb_titleForHeaderInSectionBlock(tableView, section);
        }
    }
    return title;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    NSString *title;
    
    if (_realDataSourse && [_realDataSourse respondsToSelector:@selector(tableView:titleForFooterInSection:)]) {
        title = [_realDataSourse tableView:tableView titleForFooterInSection:section];
    }else {
        if (_cb_titleForFooterInSectionBlock) {
            title = _cb_titleForFooterInSectionBlock(tableView, section);
        }
    }
    return title;
}

@end
