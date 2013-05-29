//
//  main.m
//  BMITime
//
//  Created by Charlie Tanksley on 5/28/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Employee *person = [[Employee alloc] init];

        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];

        float bmi = [person bodyMassIndex];
        NSLog(@"Employee #%d has a BMI of %f.",
              [person employeeID], bmi);

    }
    return 0;
}

