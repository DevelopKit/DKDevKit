//
//  Created by ZhaiQiang on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface CBScrollViewDelegate : NSObject <UIScrollViewDelegate>

/**
 *  Real delegate of UIScrollView.
 */
@property (nonatomic, weak, readwrite) id realDelegate;

/**
 *  Called when start scrolling.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewDidScrollBlock)(UIScrollView *s);

/**
 *  Called when end the animation.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewDidEndScrollingAnimationBlock)(UIScrollView *s);

/**
 *  Will end Dragging.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewWillEndDraggingBlock)(UIScrollView *s, CGPoint velocity, CGPoint *targetContentOffset);

/**
 *  Did begin zooming.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewDidZoomBlock)(UIScrollView *s);

/**
 *  Will begin dragging.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewWillBeginDraggingBlock)(UIScrollView *s);

/**
 *  Will end dragging.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewDidEndDraggingBlock)(UIScrollView *s, BOOL decelerate);

/**
 *  Will begin decelerating.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewWillBeginDeceleratingBlock)(UIScrollView *s);

/**
 *  Did end decelerating.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewDidEndDeceleratingBlock)(UIScrollView *s);

/**
 *  Return the view for zooming.
 */
@property (nonatomic, copy, readwrite) UIView *(^cb_viewForZoomingInScrollViewBlock)(UIScrollView *s);

/**
 *  Will begin zooming.
 */
@property (nonatomic, copy, readwrite) UIView *(^cb_scrollViewWillBeginZoomingBlock)(UIScrollView *s, UIView *v);

/**
 *  Did end zoomig.
 */
@property (nonatomic, copy, readwrite) UIView *(^cb_scrollViewDidEndZoomingBlock)(UIScrollView *s, UIView *v, CGFloat scale);

/**
 *  Should scroll to top.
 */
@property (nonatomic, copy, readwrite) BOOL(^cb_scrollViewShouldScrollToTopBlock)(UIScrollView *s);

/**
 *  Did scroll to top.
 */
@property (nonatomic, copy, readwrite) void(^cb_scrollViewDidScrollToTopBlock)(UIScrollView *s);

@end
