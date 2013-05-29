//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Charlie Tanksley on 5/29/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return [self conversionRate] * [super costInDollars];
}

- (float)valueInDollars
{
    return [self conversionRate] * [super valueInDollars];
}
@end
