#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {

    NSString *stringValue = [number stringValue];
    NSString *cleanString = @"";
    
    if ([stringValue hasPrefix:@"-"]) {
        
        cleanString = [stringValue substringFromIndex:1];
        return [self convertStringDependingOnFirstCharacter:cleanString];
        
    } else {
        
        cleanString = stringValue;
        return [self convertStringDependingOnFirstCharacter:cleanString];
    }
    
    return  nil;
}

- (NSArray *) convertStringDependingOnFirstCharacter: (NSString *)string  {
    
    NSMutableArray* resultArray = [NSMutableArray new];
    NSString *reversedString = @"";
    
    for (int i = 0; i < string.length; i++) {
        reversedString = [NSMutableString stringWithFormat:@"%c%@", [string characterAtIndex:i], reversedString];
    }
    
    NSInteger lengthOfReversedString = [reversedString length];
    unichar concreteCharacter[lengthOfReversedString + 1];
    
    [reversedString getCharacters:concreteCharacter
                    range: NSMakeRange(0, lengthOfReversedString)];
    
    for (int i = 0; i < lengthOfReversedString; i++) {
        [resultArray addObject: [NSString stringWithFormat:@"%C", concreteCharacter[i]]];
    }
    
    return resultArray;
}

@end
