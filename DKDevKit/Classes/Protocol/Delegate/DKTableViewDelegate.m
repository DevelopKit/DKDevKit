//
//  Created by ZhaiQiang on 16/8/28.
//

#import "DKTableViewDelegate.h"

@implementation DKTableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = 40.f;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:heightForRowAtIndexPath:)]) {
        height = [_realDelegate tableView:tableView heightForRowAtIndexPath:indexPath];
    }else {
        if (_cb_heightForRowBlock) {
           height = _cb_heightForRowBlock(tableView, indexPath);
        }
    }
    
    return height;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    CGFloat height = 1.f;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:heightForHeaderInSection:)]) {
        height = [_realDelegate tableView:tableView heightForHeaderInSection:section];
    }else {
        if (_cb_heightForHeaderBlock) {
            height = _cb_heightForHeaderBlock(tableView, section);
        }
    }
    return height;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    CGFloat height = 1.f;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:heightForFooterInSection:)]) {
        height = [_realDelegate tableView:tableView heightForFooterInSection:section];
    }else {
        if (_cb_heightForFooterBlock) {
            height = _cb_heightForFooterBlock(tableView, section);
        }
    }
    return height;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat estimatedHeight = 40.f;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:estimatedHeightForRowAtIndexPath:)]) {
        estimatedHeight = [_realDelegate tableView:tableView estimatedHeightForRowAtIndexPath:indexPath];
    }else {
        if (_cb_estimatedHeightForRowBlock) {
            estimatedHeight = _cb_estimatedHeightForRowBlock(tableView, indexPath);
        }
    }
    return estimatedHeight;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section {
    CGFloat estimatedHeight = 1.f;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:estimatedHeightForHeaderInSection:)]) {
        estimatedHeight = [_realDelegate tableView:tableView estimatedHeightForHeaderInSection:section];
    }else {
        if (_cb_estimatedHeightForHeaderBlock) {
            estimatedHeight = _cb_estimatedHeightForHeaderBlock(tableView, section);
        }
    }
    return estimatedHeight;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section {
    CGFloat estimatedHeight = 1.f;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:estimatedHeightForFooterInSection:)]) {
        estimatedHeight = [_realDelegate tableView:tableView estimatedHeightForFooterInSection:section];
    }else {
        if (_cb_estimatedHeightForFooterBlock) {
            estimatedHeight = _cb_estimatedHeightForFooterBlock(tableView, section);
        }
    }
    return estimatedHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    id cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)]) {
        [_realDelegate tableView:tableView didSelectRowAtIndexPath:indexPath];
    }
    if (_cb_didSelectRowAtIndexPathBlock) {
        _cb_didSelectRowAtIndexPathBlock(tableView, cell, indexPath);
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:viewForHeaderInSection:)]) {
        view = [_realDelegate tableView:tableView viewForHeaderInSection:section];
    }else {
        if (_cb_viewForHeaderInSectionBlock) {
            view = _cb_viewForHeaderInSectionBlock(tableView, section);
        }
    }
    return view;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *view;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:viewForFooterInSection:)]) {
        view = [_realDelegate tableView:tableView viewForFooterInSection:section];
    }else {
        if (_cb_viewForFooterInSectionBlock) {
            view = _cb_viewForFooterInSectionBlock(tableView, section);
        }
    }
    return view;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    id cell = [tableView cellForRowAtIndexPath:indexPath];

    if (_realDelegate && [_realDelegate respondsToSelector:@selector(tableView:didDeselectRowAtIndexPath:)]) {
        [_realDelegate tableView:tableView didDeselectRowAtIndexPath:indexPath];
    }
    if (_cb_didDeselectRowAtIndexPath) {
        _cb_didDeselectRowAtIndexPath(tableView, cell, indexPath);
    }
}

@end
