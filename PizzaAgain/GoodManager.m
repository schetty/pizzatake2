//
//  GoodManager.m
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-09.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "GoodManager.h"
@class Kitchen;

@implementation GoodManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(id)size andToppings:(NSArray *)toppings {
    return true;
    
}



-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return true;
}

@end
