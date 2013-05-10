//
//  main.c
//  Coolness
//
//  Created by Charlie Tanksley on 5/10/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for (i = 99; i >= 0; i--) {
        if (i % 3 != 0) {
            continue;
        }

        printf("%d\n", i);

        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }

    return 0;
}

