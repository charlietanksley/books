//
//  Asset.h
//  BMITime
//
//  Created by Charlie Tanksley on 5/30/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
