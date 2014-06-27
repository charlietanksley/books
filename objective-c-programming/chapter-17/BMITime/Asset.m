//
//  Asset.m
//  BMITime
//
//  Created by Charlie Tanksley on 5/30/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >",
                     [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
