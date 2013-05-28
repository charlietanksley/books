//
//  main.m
//  DateList
//
//  Created by Charlie Tanksley on 5/23/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Three NSDate objects:
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];

        // An empty array
        NSMutableArray *dateList = [NSMutableArray array];

        [dateList addObject:now];
        [dateList addObject:tomorrow];
        // Put yesterday at the front:
        [dateList insertObject:yesterday atIndex:0];

        // A better for loop:
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }

        // Remove yesterday and tell me the first day now:
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);
    }
    return 0;
}

