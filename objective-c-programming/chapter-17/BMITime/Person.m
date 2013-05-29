//
//  Person.m
//  BMITime
//
//  Created by Charlie Tanksley on 5/28/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
