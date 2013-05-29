//
//  Person.h
//  BMITime
//
//  Created by Charlie Tanksley on 5/28/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property float heightInMeters;
@property int weightInKilos;

// Calculations
- (float)bodyMassIndex;
@end
