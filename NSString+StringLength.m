//
//  NSString+StringLength.m
//  Nevedrov_lab_2
//
//  Created by Admin on 25.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "NSString+StringLength.h"

@implementation NSString (StringLength)

-(BOOL) stringLenght
{
    NSLog(@"%lu", (unsigned long)[self length]);
    if ([self length] > 15)
    {
        return false;
    }
    return true;
}

@end
