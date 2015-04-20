//
//  Rectangle.h
//  XYPoint
//
//  Created by Sander Peerna on 4/20/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int)  area;
-(int)  perimeter;

@end
