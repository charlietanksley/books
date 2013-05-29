//
//  main.m
//  Stocks
//
//  Created by Charlie Tanksley on 5/28/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stockholding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        StockHolding *stock1 = [[StockHolding alloc] init];
        StockHolding *stock2 = [[StockHolding alloc] init];
        StockHolding *stock3 = [[StockHolding alloc] init];
        ForeignStockHolding *stock4 = [[ForeignStockHolding alloc] init];

        [stock1 setPurchaseSharePrice:1.0];
        [stock1 setCurrentSharePrice:2.0];
        [stock1 setNumberOfShares:100];

        [stock2 setPurchaseSharePrice:100.0];
        [stock2 setCurrentSharePrice:200.0];
        [stock2 setNumberOfShares:1000];

        [stock3 setPurchaseSharePrice:100.0];
        [stock3 setCurrentSharePrice:2.0];
        [stock3 setNumberOfShares:344];

        [stock4 setPurchaseSharePrice:1.0];
        [stock4 setCurrentSharePrice:2.0];
        [stock4 setNumberOfShares:100];
        [stock4 setConversionRate:1.6];


        NSArray *myStocks = [NSArray arrayWithObjects:stock1, stock2, stock3, stock4, nil];

        for (StockHolding *s in myStocks) {
            NSLog(@"We purchased the stock for %.2f.", [s costInDollars]);
            NSLog(@"And it is now worht %.2f.", [s valueInDollars]);
        }
    }
    return 0;
}

