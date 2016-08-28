//
// Created by NaCai on 16/8/28.
//

#import "DKMacros.h"


BOOL RESPONSE_TO_SELECTOR(id value,SEL sel){
    return value && [value respondsToSelector:sel];
}

@implementation DKMacros {

}
@end