//
//  Rectangle.m
//  XYPoint
//
//  Created by Sander Peerna on 4/20/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(XYPoint *) origin
{
    XYPoint *originCopy = [[XYPoint alloc] init];
    originCopy.x = origin.x;
    originCopy.y = origin.y;
    
    return originCopy;
}

-(void) setOrigin: (XYPoint *) pt
{
    if (! origin)
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

@end
