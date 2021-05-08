#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
        
    NSMutableArray *dome = [NSMutableArray new];
    NSString *stringValue = [number stringValue];
    
    unsigned int len = [stringValue length];
    char buffer[len];
    
    [stringValue getCharacters:buffer range:NSMakeRange(0, len)];
    
    for(int i = 0; i < len; ++i) {
       char current = buffer[i];
        [dome addObject: [NSString stringWithFormat:@"%C", [stringValue characterAtIndex:current]]];
    }
    
    for (int i = 0; i<10; i++) {
        [dome exchangeObjectAtIndex:0 withObjectAtIndex:dome.count-1];
    }
    
    return dome;
}

@end
