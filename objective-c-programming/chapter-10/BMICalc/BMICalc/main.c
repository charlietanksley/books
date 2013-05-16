//
//  main.c
//  BMICalc
//
//  Created by Charlie Tanksley on 5/16/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{

    long secondsSince1970 = time(NULL);
    long fourMillionSecondsFromNow = secondsSince1970 + 4000000;

    struct tm theFuture;
    localtime_r(&fourMillionSecondsFromNow, &theFuture);
    int year = theFuture.tm_year + 1900;
    int month = theFuture.tm_mon + 1;
    int day = theFuture.tm_mday;
    printf("Four million seconds from now it will be %d-%d-%d",
           month, day, year);

    return 0;
}

