//
//  Created by ZhaiQiang on 16/8/28.
//

#import "DKTextFieldDelegate.h"

@implementation DKTextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textFieldDidBeginEditing:)]) {
        [_realDelegate textFieldDidBeginEditing:textField];
    }
    if (_cb_didBeginEditingBlock) {
        _cb_didBeginEditingBlock(textField);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textFieldDidEndEditing:)]) {
        [_realDelegate textFieldDidEndEditing:textField];
    }
    if (_cb_didEndEditingBlock) {
        _cb_didEndEditingBlock(textField);
    }
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textFieldShouldBeginEditing:)]) {
        should = [_realDelegate textFieldShouldBeginEditing:textField];
    }

    if (_cb_shouldBeginEditingBlock) {
        should &= _cb_shouldBeginEditingBlock(textField);
    }
        
    return should;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textFieldShouldEndEditing:)]) {
        should = [_realDelegate textFieldShouldEndEditing:textField];
    }
    
    if (_cb_shouldEndEditingBlock) {
        should &= _cb_shouldEndEditingBlock(textField);
    }
    
    return should;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)]) {
        should = [_realDelegate textField:textField
            shouldChangeCharactersInRange:range
                        replacementString:string];
    }
    
    if (_cb_shouldChangeCharactersInRangeWithReplacementStringBlock) {
        should &= _cb_shouldChangeCharactersInRangeWithReplacementStringBlock(textField, range, string);
    }
    
    return should;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textFieldShouldClear:)]) {
        should = [_realDelegate textFieldShouldClear:textField];
    }
    
    if (_cb_shouldClearBlock) {
        should &= _cb_shouldClearBlock(textField);
    }
    
    return should;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textFieldShouldReturn:)]) {
        should = [_realDelegate textFieldShouldReturn:textField];
    }
    
    if (_cb_shouldReturnBlock) {
        should &= _cb_shouldReturnBlock(textField);
    }
    
    return should;
}

@end
