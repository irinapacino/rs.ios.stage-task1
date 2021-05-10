#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if ([self count] != 0) {
        int min = 0;
        for (int i = 0; i < [self count]; i++) {
            if ([self[min] intValue] > [self[i] intValue]) {
                min = i;
                break;
            }
        }
        return self[min];
    }
    return nil;
}

@end
