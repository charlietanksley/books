//
//  main.m
//  CommonNamesThatAreWords
//
//  Created by Charlie Tanksley on 5/23/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/bin/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:nil];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/bin/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:nil];
        NSLog(@"%@", nameString);

        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];

        for (NSString *name in names) {
            NSLog(@"%@", name);
            for (NSString *word in words) {
                if ([name caseInsensitiveCompare:word] == NSOrderedSame) {
                    NSLog(@"%@ is a name and a word.", name);
                }
            }
        }

    }
    return 0;
}

