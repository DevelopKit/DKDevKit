//
//  Created by ZhaiQiang on 16/8/28.
//

#import <Foundation/Foundation.h>

@interface CBTextFieldDelegate : NSObject <UITextFieldDelegate>

/**
 *  Real delegate of UITextField.
 */
@property (nonatomic, weak) id realDelegate;

/**
 *  Did begin editing block.
 */
@property (nonatomic, copy) void(^cb_didBeginEditingBlock)(UITextField *f);

/**
 *  Did end editing block.
 */
@property (nonatomic, copy) void(^cb_didEndEditingBlock  )(UITextField *f);

/**
 *	Before begins editing block.
 */
@property (nonatomic, copy) BOOL(^cb_shouldBeginEditingBlock)(UITextField *f);

/**
 *	Before ends editing block.
 */
@property (nonatomic, copy) BOOL(^cb_shouldEndEditingBlock)(UITextField *f);

/**
 *	Text will change block.
 */
@property (nonatomic, copy) BOOL(^cb_shouldChangeCharactersInRangeWithReplacementStringBlock)(UITextField *f, NSRange r, NSString *s);

/**
 *	Clear button is pressed block.
 */
@property (nonatomic, copy) BOOL(^cb_shouldClearBlock)(UITextField *f);

/**
 *	Keyboard's return button block.
 */
@property (nonatomic, copy) BOOL(^cb_shouldReturnBlock)(UITextField *f);

@end
