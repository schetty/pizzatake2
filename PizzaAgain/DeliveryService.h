//
//  DeliveryService.h
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-09.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryDelegate.h"
#import "Pizza.h"
//manager can delegate the delivery service when the pizza is done

@interface DeliveryService : NSObject

@property id<DeliveryDelegate> delegate;

@property (nonatomic, strong) NSArray* arrayOfPizzas;

-(void)deliverPizza:(Pizza *)pizza;
-(NSArray *)returnDescriptions;


@end
