//
//  DeliveryDelegate.h
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-09.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#ifndef DeliveryDelegate_h
#define DeliveryDelegate_h

@class DeliveryService;
@protocol DeliveryDelegate <NSObject>


-(void) storeOrders:(NSArray*)order;

@end

#endif /* DeliveryDelegate_h */
