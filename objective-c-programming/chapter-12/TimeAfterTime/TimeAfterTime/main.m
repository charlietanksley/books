//
//  main.m
//  TimeAfterTime
//
//  Created by Charlie Tanksley on 5/21/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1980];
        [comps setMonth:1];
        [comps setDay:5];

        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];

        NSDate *myBirth = [g dateFromComponents:comps];

        NSDate *now = [[NSDate alloc] init];
        double timeSinceMyBirth = [now timeIntervalSinceDate:myBirth];

        NSLog(@"I was born on %@.", myBirth);
        NSLog(@"It has been %f seconds since I was born.", timeSinceMyBirth);

        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                       forDate:now];
        NSLog(@"This is day %lu of the month", day);

        NSTimeZone *timezone = [NSTimeZone systemTimeZone];
        BOOL dst = [timezone isDaylightSavingTime];

        if (dst == 1) {
            NSLog(@"It is DST");
        } else {
            NSLog(@"Not DST");
        }

        NSHost *currentHost = [NSHost currentHost];
        NSString *localizedName = [currentHost localizedName];

        NSLog(@"My computer's localized name is %@.", localizedName);
    }
    return 0;
}

