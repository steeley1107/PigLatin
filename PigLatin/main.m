//
//  main.m
//  PigLatin
//
//  Created by Steele on 2015-10-23.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NSString_PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *pigString = @"hello how are you";
        
        NSLog(@"%@",[pigString stringByPigLatinization]);
         
    }
    return 0;
}
