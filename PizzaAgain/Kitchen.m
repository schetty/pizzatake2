//
//  Kitchen.m
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

-(Pizza *)makePizzaWithSize:(PizzaSize)pizzaSize andToppings:(NSArray *)toppings {
    //self.delegate = should I continue with the action?
    //instance of the kitchen is self
    //the rest are parameters getting passed in BECAUSE
    //responding to the PROTOCOL method which reads:
    //-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
    if([self.delegate kitchen:self shouldMakePizzaOfSize:pizzaSize andToppings:toppings]){
        //if else within an if else
        //anytime calling a method from the protocol, need to direct it at the delegate first
        //        if ([self.delegate kitchenShouldUpgradeOrder:self] == True ... essentially what it's saying

        if ([self.delegate kitchenShouldUpgradeOrder:(self)] == YES && pizzaSize !=2) {
            return [[Pizza alloc] initWithSize:large andToppings:toppings];
        }
            return [[Pizza alloc] initWithSize:pizzaSize andToppings:toppings];

    }
    NSLog(@"no pizza then");
    return nil;
}

@end
