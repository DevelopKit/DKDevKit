//
//  Created by ZhaiQiang on 16/8/28.
//

#import "DKTextViewDelegate.h"

@implementation DKTextViewDelegate

- (void)textViewDidChange:(UITextView *)textView {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textViewDidChange:)]) {
        [_realDelegate textViewDidChange:textView];
    }
    if (_cb_changeValueBlock) {
        _cb_changeValueBlock(textView);
    }
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textViewShouldBeginEditing:)]) {
        should = [_realDelegate textViewShouldBeginEditing:textView];
    }
    
    if (_cb_shouldBeginEditingBlock) {
        should &= _cb_shouldBeginEditingBlock(textView);
    }
    
    return should;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textViewShouldEndEditing:)]) {
        should = [_realDelegate textViewShouldEndEditing:textView];
    }
    
    if (_cb_shouldEndEditingBlock) {
        should &= _cb_shouldEndEditingBlock(textView);
    }
    
    return should;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textViewDidBeginEditing:)]) {
        [_realDelegate textViewDidBeginEditing:textView];
    }
    if (_cb_didBeginEditingBlock) {
        _cb_didBeginEditingBlock(textView);
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textViewDidEndEditing:)]) {
        [_realDelegate textViewDidEndEditing:textView];
    }
    if (_cb_didEndEditingBlock) {
        _cb_didEndEditingBlock(textView);
    }
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textView:shouldChangeTextInRange:replacementText:)]) {
        should = [_realDelegate textView:textView
                 shouldChangeTextInRange:range
                         replacementText:text];
    }
    
    if (_cb_shouldChangeCharactersInRangeWithReplacementTextBlock) {
        should &= _cb_shouldChangeCharactersInRangeWithReplacementTextBlock(textView, range, text);
    }
    
    return should;
}

- (void)textViewDidChangeSelection:(UITextView *)textView {
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textViewDidChangeSelection:)]) {
        [_realDelegate textViewDidChangeSelection:textView];
    }
    if (_cb_didChangeSelecionBlock) {
        _cb_didChangeSelecionBlock(textView);
    }
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textView:shouldInteractWithURL:inRange:)]) {
        should = [_realDelegate textView:textView
                   shouldInteractWithURL:URL
                                 inRange:characterRange];
    }
    
    if (_cb_shouldInteractWithURLInRangeBlock) {
        should &= _cb_shouldInteractWithURLInRangeBlock(textView, URL, characterRange);
    }
    
    return should;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange {
    BOOL should = YES;
    
    if (_realDelegate && [_realDelegate respondsToSelector:@selector(textView:shouldInteractWithTextAttachment:inRange:)]) {
        should = [_realDelegate textView:textView
        shouldInteractWithTextAttachment:textAttachment
                                 inRange:characterRange];
    }
    
    if (_cb_shouldInteractWithTextAttachmentInRangeBlock) {
        should &= _cb_shouldInteractWithTextAttachmentInRangeBlock(textView, textAttachment, characterRange);
    }
    
    return should;
}

@end
