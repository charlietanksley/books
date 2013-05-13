//
//  main.c
//  Addresses
//
//  Created by Charlie Tanksley on 5/13/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    printf("i is %d.\n", *addressOfI);
    printf("i stores its value at %p.\n", addressOfI);

    *addressOfI = 89;
    printf("Now i is %d.\n", i);

    printf("An int is %zu bytes.\n", sizeof(i));
    printf("A pointer is %zu bytes.\n", sizeof(addressOfI));

    float f = 23.12;
    printf("A float is %zu bytes.\n", sizeof(f));

    short s = 1;
    printf("A short is %zu bytes.\n", sizeof(s));

    return 0;
}

