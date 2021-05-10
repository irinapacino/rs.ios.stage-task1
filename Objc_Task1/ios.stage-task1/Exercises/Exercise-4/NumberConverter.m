#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number != nil) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        int element = [number intValue];
        element = element < 0 ? - element : element;
        while (element > 0) {
            [array addObject: [NSString stringWithFormat:@"%d", element % 10]];
            element = element / 10;
        }
        return array;
    }
    return @[];
}

@end
