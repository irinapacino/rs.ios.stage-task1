#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if (([self length] > 0) && ([self length] <= 100)){
        for(int i = 0; i < self.length; i++){
            if(!isdigit([self characterAtIndex: i])){
                return false;
            }
        }
        return true;
    }
    return false;
    
}

@end
