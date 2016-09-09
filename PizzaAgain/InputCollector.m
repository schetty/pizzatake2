//
//  InputCollector.m
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *) inputPrompt: (NSString *) promptString {
    
    NSLog(@"%@", promptString);
    
    char str[100];
    fgets (str, 100, stdin);
    
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    //    NSLog(@"Input was %@", inputString);
    
    return inputString;
}

@end
