//
//  Pizza.m
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Pizza.h"




@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _pizzaSize = size;
        _toppings = toppings;
        
        NSLog(@"one %li pizza with %@", (long)self.size, self.toppings);
    }
    return self;
}






@end
