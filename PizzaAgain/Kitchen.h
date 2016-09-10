//
//  Kitchen.h
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"

@interface Kitchen : NSObject


//KITCHEN HAS A DELEGATE IS ALL THIS LINE IS SAYING!!!!!!!! and it's any object and it abides to the kitchen delegate protocol aka the contract that it must fulfill


@property id<KitchenDelegate> delegate;

@property (nonatomic, strong) Pizza* madeNewPizza;

-(Pizza *) makePizzaWithSize:(PizzaSize)pizzaSize andToppings:(NSArray *)toppings;

-(void)kitchenDidMakePizza:(Pizza *)pizza;

//kitchen is the parameter passed into upgrading an order because the instance of the kitchen will be the one cooking the pizza - making the pizza larger

//-(Pizza *) upgradeOrder:(Kitchen *)kitchen;

@end
