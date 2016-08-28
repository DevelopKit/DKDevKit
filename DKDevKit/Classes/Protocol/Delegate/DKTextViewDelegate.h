//
//  Created by ZhaiQiang on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface CBTextViewDelegate : NSObject <UITextViewDelegate>

/**
 *  Real delegate of UITextView.
 */
@property (nonatomic, weak, readwrite) id realDelegate;

/**
 *  Value changed blcok.
 */
@property (nonatomic, copy) void(^cb_changeValueBlock)(UITextView *x);

/**
 *  Did begin editing block.
 */
@property (nonatomic, copy) void(^cb_didBeginEditingBlock)(UITextView *x);

/**
 *  Did end editing block.
 */
@property (nonatomic, copy) void(^cb_didEndEditingBlock)(UITextView *x);

/**
 *	Before begins editing.
 */
@property (nonatomic, copy) BOOL(^cb_shouldBeginEditingBlock)(UITextView *x);

/**
 *	Before ends editing.
 */
@property (nonatomic, copy) BOOL(^cb_shouldEndEditingBlock)(UITextView *x);
/**
 *	Text will be changed.
 */
@property (nonatomic, copy) BOOL(^cb_shouldChangeCharactersInRangeWithReplacementTextBlock)(UITextView *x, NSRange r, NSString *s);

/**
 *	Did change selecion.
 */
@property (nonatomic, copy) void(^cb_didChangeSelecionBlock)(UITextView *x);

/**
 *  Interact with text attachment in range.
 */
@property (nonatomic, copy) BOOL(^cb_shouldInteractWithTextAttachmentInRangeBlock)(UITextView *x, NSTextAttachment *a, NSRange r);

/**
 *  Interact with URL in range.
 */
@property (nonatomic, copy) BOOL(^cb_shouldInteractWithURLInRangeBlock)(UITextView *x, NSURL *u, NSRange r);

@end
