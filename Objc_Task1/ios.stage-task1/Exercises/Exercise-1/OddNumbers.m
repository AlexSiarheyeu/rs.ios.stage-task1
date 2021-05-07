//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    
    NSMutableArray *resultArray = [NSMutableArray new];
    
    for (NSNumber *digit in array) {
        
        if (digit.intValue % 2 != 0)  {
            [resultArray addObject:digit];
        }
    }
    
    return  resultArray.count;

}

@end
