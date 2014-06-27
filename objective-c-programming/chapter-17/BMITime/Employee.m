//
//  Employee.m
//  BMITime
//
//  Created by Charlie Tanksley on 5/29/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"


@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a
{
    if (!assets) {
        assets = [[NSMutableArray alloc] init];
    }

    [assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }

    return sum;
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: %d in assets>",
                     [self employeeID], [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
