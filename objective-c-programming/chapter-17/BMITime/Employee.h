//
//  Employee.h
//  BMITime
//
//  Created by Charlie Tanksley on 5/29/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
