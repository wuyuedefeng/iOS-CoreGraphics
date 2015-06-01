//
//  WSLineView.m
//  CGGraphicsLearn
//
//  Created by senwang on 15/6/1.
//  Copyright (c) 2015年 senwang. All rights reserved.
//

#import "WSLineView.h"

@implementation WSLineView

- (void)drawRect:(CGRect)rect
{
    //[self drawLineFromPoint:CGPointMake(10, 10) toPoint:CGPointMake(250, 250)];
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 100)];
    
    [path addLineToPoint:CGPointMake(300, 100)];
    
    CGContextAddPath(ctx, path.CGPath);
    
    CGContextStrokePath(ctx);
}



//划线
- (void)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint
{
    CGContextRef crf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:fromPoint];
    [path addLineToPoint:toPoint];
    
    
    
    CGContextAddPath(crf, path.CGPath);
    
    //渲染
    CGContextStrokePath(crf);
}
@end
