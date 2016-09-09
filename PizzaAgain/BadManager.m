//
//  BadManager.m
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-09.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "BadManager.h"

@implementation BadManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings doesContain:@"anchovies"]) {
        NSLog(@"yuck no anchvoies");
    }
    return false;

}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {

    return true;
    
}

@end
