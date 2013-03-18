//
//  main.c
//  TwoFloats
//
//  Created by Charlie Tanksley on 3/17/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float firstVariable;
    float secondVariable;
    double sum;

    firstVariable = 3.14;
    secondVariable = 42.0;
    sum = firstVariable + secondVariable;

    printf("The value of %f plus %f is %f.\n", firstVariable, secondVariable, sum);

    return 0;
}

