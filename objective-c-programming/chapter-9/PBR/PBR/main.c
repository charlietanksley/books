//
//  main.c
//  PBR
//
//  Created by Charlie Tanksley on 5/14/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, float *rPtr, float *thetaPtr)
{
    // Is rPtr non-NULL?
    if (rPtr) {
        // Store the radius in the supplied address
        *rPtr = sqrt(x * x + y * y);
    }

    // Is thetaPtr NULL?
    if (!thetaPtr) {
        return;
    }

    // Calculate theta
    float theta;
    if (x == 0.0) {
        if (y == 0.0) {
            theta = 0.0;
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = - M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }

    // Store theta in the supplied address
    *thetaPtr = theta;
}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;

    // Pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);

    // Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f.\n",
           integerPart,
           fractionPart);


    // In the book it says these should be doubles, but XCode
    // complains and gets things wrong unless I make them floats.
    float x = 3.0;
    float y = 4.0;
    float radius;
    float angle;

    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f).\n",
           x, y, radius, angle);

    return 0;
}

