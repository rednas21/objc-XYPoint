//
//  main.m
//  XYPoint
//
//  Created by Sander Peerna on 4/20/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint   *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100 andY: 200];
        
        [myRect setWidth: 5 andHeight: 8];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX: 50 andY: 50];
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}
