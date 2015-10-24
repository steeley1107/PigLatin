//
//  NSString+NSString_PigLatin.m
//  PigLatin
//
//  Created by Steele on 2015-10-23.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "NSString+NSString_PigLatin.h"

@implementation NSString (NSString_PigLatin)


-(NSString *)stringByPigLatinization {
    
    NSMutableArray *pigLatinArray = [NSMutableArray new];
    NSString *pigLatinString;
    
    NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    // Take the first word of the command as the size, and the rest as the toppings
    NSArray *inputWords = [self componentsSeparatedByString:@" "];
    
    for (NSString *words in inputWords) {
        
        //find where the first vowels is located.
        NSRange searchRange = NSMakeRange(0, words.length);
        NSRange foundRange = [words rangeOfCharacterFromSet:vowelSet options:0 range:searchRange];
        
        if (foundRange.location == NSNotFound) {
            NSLog(@"no words found");
        } else {
            NSString *start = [words substringToIndex:foundRange.location];
            NSString *mid = [words substringFromIndex:foundRange.location];
            NSString *end = @"ay";
            
            pigLatinString = [mid stringByAppendingString:start];
            pigLatinString = [pigLatinString stringByAppendingString:end];
            
            [pigLatinArray addObject:pigLatinString];
        }
        
    }
    
    return [pigLatinArray componentsJoinedByString:@" "];
    
    
    
    
    
}


@end
