//
//  Employee.m
//  BMITime
//
//  Created by Charlie Tanksley on 5/29/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}
@end
