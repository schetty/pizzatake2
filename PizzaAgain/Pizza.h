//
//  Pizza.h
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface Pizza : NSObject

typedef NS_ENUM (NSInteger,PizzaSize) {
    small,
    medium,large,
};

///REMEMBER THIS SYNTAX FOR ENUMS!!!!!!

@property int pizzaSize;

@property PizzaSize size;

@property (nonatomic, strong) NSArray * toppings;


-(instancetype) initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;



@end
