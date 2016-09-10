//
//  main.m
//  PizzaAgain
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "InputCollector.h"
#import "KitchenDelegate.h"
#import "GoodManager.h"
#import "BadManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        InputCollector *input = [[InputCollector alloc]init];
        Kitchen *mainKitchen = [[Kitchen alloc]init];
        NSMutableArray *toppings = [[NSMutableArray alloc]init];
        GoodManager *goodMan = [[GoodManager alloc]init];
        BadManager *badMan = [[BadManager alloc]init];
        DeliveryService *delivServ = [[DeliveryService alloc]init];
        
        
        BOOL isOpen = NO;
        
        
        NSString *open = [input inputPrompt: @"Welcome to Casa della nonna. Would you like to order a PIZZA? yes/no"];
        if ([open isEqualToString:@"yes"]) {
            
            isOpen = YES;
            
            
            //loop forever until time to close!!
            
            while (TRUE) {
                
                NSString *declareSize = [input inputPrompt: @"\n type 'small' for Small Pizza \n 'medium' for Medium Pizza \n or 'large' for Large Pizza"];
                
                
                ///remember syntax for setting ENUM options
                
                PizzaSize size;
                
                if ([declareSize isEqualToString: @"large"]) {
                    size = large;
                    NSLog(@"you ordered size: %@", declareSize);
                }
                
                else if ([declareSize isEqualToString: @"medium"]) {
                    size = medium;
                    NSLog(@"you ordered size: %@", declareSize);
                }
                
                else if ([declareSize isEqualToString: @"small"]) {
                    size = small;
                    NSLog(@"you ordered size: %@", declareSize);
                }
                
//                else {
//                    NSLog(@"no pizza for you");
//                }
                
                
                toppings = [@[]mutableCopy];
                NSString *declareToppings = [input inputPrompt: @"\n type all toppings you want on pizza"];
                
                while (![declareToppings isEqualToString: @"done"]) {
                        [toppings addObject: declareToppings];
                    
                    declareToppings = [input inputPrompt: @"\n type your next topping \n If done, type 'done'"];
                    
                    if ([declareToppings isEqualToString: @"done"]) {
                        //don't set nsmutableArray equal to the array when it is adding objects
                        NSLog(@" you want a pizza with %@", toppings);
                    }
                    
                }
                
                //create an empty array for the toppings
                //need to have mutableCopy appear inside brackets to create empty NSMutableArray
                
                NSString *declareUpgrade = [input inputPrompt: @"last chance to upgrade: Do you wish to upgrade? y/n"];
                if ([declareUpgrade isEqualToString:@"yes"]) {
                    [mainKitchen.delegate kitchenShouldUpgradeOrder:mainKitchen];
                }
                
                if ([mainKitchen.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                    NSLog(@"We have a good delegate");
                }
                
                
                NSString *declareManager = [input inputPrompt: @"Type 1 for Good Manager \n 2 for Bad"];
                if ([declareManager isEqualToString:@"1"]) {
                    mainKitchen.delegate = goodMan;
                    [mainKitchen makePizzaWithSize:size andToppings:(toppings)];
                }
            
                if ([declareManager isEqualToString:@"2"]) {
                    mainKitchen.delegate = badMan;
                   [mainKitchen makePizzaWithSize:size andToppings:(toppings)];

                    
                }
                
            }
            
        }
        return 0;
    }
    
}
