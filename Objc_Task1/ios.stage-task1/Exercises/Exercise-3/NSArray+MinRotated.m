#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

// MARK: The most easiest way

- (NSNumber *)minRotated_0 {
    return [self valueForKeyPath:@"@min.self"];
}

// MARK: Solution according to the requirements

- (NSNumber *)minRotated {
    
    if ([self firstObject] == nil) {
        return nil;
    }
    
    NSInteger firstElement = 0;
    NSInteger lastElement = self.count - 1;
    NSNumber *last = self.lastObject;

    while (firstElement < lastElement) {
        
        NSInteger mid = firstElement + (lastElement - firstElement) / 2;
        NSNumber *temporaryMid = self[mid];
        
        if (temporaryMid.intValue > last.intValue) {
            firstElement = mid + 1;
        } else {
            lastElement = mid;
        }
    }
    return self[lastElement];
}


@end
