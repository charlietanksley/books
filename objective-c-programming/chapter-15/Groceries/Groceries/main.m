//
//  main.m
//  Groceries
//
//  Created by Charlie Tanksley on 5/23/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSMutableArray *list = [NSMutableArray array];

        NSString *milk = @"Milk";
        NSString *bread = @"Bread";
        NSString *iceCream = @"Ice Cream";

        [list addObject:milk];
        [list addObject:bread];
        [list addObject:iceCream];

        for (NSString *c in list) {
            NSLog(@"Be sure to buy %@.", c);
        }

    }
    return 0;
}

