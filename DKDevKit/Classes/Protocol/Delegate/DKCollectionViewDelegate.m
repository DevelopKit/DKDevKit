//
//  Created by ZhaiQiang on 16/8/28.
//

#import "CBCollectionViewDelegate.h"

@implementation CBCollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:didSelectItemAtIndexPath:)]) {
        [_realDelegate collectionView:collectionView
             didSelectItemAtIndexPath:indexPath];
    }
    if (_cb_didSelectItemAtIndexPathBlock) {
        _cb_didSelectItemAtIndexPathBlock(collectionView);
    }
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:didDeselectItemAtIndexPath:)]) {
        [_realDelegate collectionView:collectionView
           didDeselectItemAtIndexPath:indexPath];
    }
    if (_cb_didDeselectItemAtIndexPathBlock) {
        _cb_didDeselectItemAtIndexPathBlock(collectionView);
    }
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:shouldShowMenuForItemAtIndexPath:)]) {
        should = [_realDelegate collectionView:collectionView
              shouldShowMenuForItemAtIndexPath:indexPath];
    }
    
    if (_cb_shouldShowMenuForItemAtIndexPathBlock) {
        should &= _cb_shouldShowMenuForItemAtIndexPathBlock(collectionView, indexPath);
    }
    
    return should;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(nullable id)sender {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:canPerformAction:forItemAtIndexPath:withSender:)]) {
        should = [_realDelegate collectionView:collectionView
                              canPerformAction:action
                            forItemAtIndexPath:indexPath
                                    withSender:sender];
    }
    
    if (_cb_canPerformActionBlock) {
        should &= _cb_canPerformActionBlock(collectionView, action, indexPath, sender);
    }
    
    return should;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(nullable id)sender {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:performAction:forItemAtIndexPath:withSender:)]) {
        [_realDelegate collectionView:collectionView
                        performAction:action
                   forItemAtIndexPath:indexPath
                           withSender:sender];
    }
    if (_cb_performActionBlock) {
        _cb_performActionBlock(collectionView, action, indexPath, sender);
    }
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:willDisplayCell:forItemAtIndexPath:)]) {
        [_realDelegate collectionView:collectionView
                      willDisplayCell:cell
                   forItemAtIndexPath:indexPath];
    }
    if (_cb_willDisplayCellBlock) {
        _cb_willDisplayCellBlock(collectionView, cell, indexPath);
    }
}

- (void)collectionView:(UICollectionView *)collectionView willDisplaySupplementaryView:(UICollectionReusableView *)view forElementKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:)]) {
        [_realDelegate collectionView:collectionView
         willDisplaySupplementaryView:view
                       forElementKind:elementKind
                          atIndexPath:indexPath];
    }
    if (_cb_willDisplaySupplementaryViewBlock) {
        _cb_willDisplaySupplementaryViewBlock(collectionView, view, elementKind, indexPath);
    }
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:didEndDisplayingCell:forItemAtIndexPath:)]) {
        [_realDelegate collectionView:collectionView
                 didEndDisplayingCell:cell
                   forItemAtIndexPath:indexPath];
    }
    if (_cb_didEndDisplayingCellBlock) {
        _cb_didEndDisplayingCellBlock(collectionView, cell, indexPath);
    }
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingSupplementaryView:(UICollectionReusableView *)view forElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(collectionView:didEndDisplayingSupplementaryView:forElementOfKind:atIndexPath:)]) {
        [_realDelegate collectionView:collectionView
    didEndDisplayingSupplementaryView:view
                     forElementOfKind:elementKind
                          atIndexPath:indexPath];
    }
    if (_cb_didEndDisplayingSupplementaryViewBlock) {
        _cb_didEndDisplayingSupplementaryViewBlock(collectionView, view, elementKind, indexPath);
    }
}

@end
