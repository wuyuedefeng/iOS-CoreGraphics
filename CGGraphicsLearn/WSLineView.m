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
    //直线
    [self drawLineFromPoint:CGPointMake(10, 250) toPoint:CGPointMake(310, 250)];
    //曲线
    [self drawArcLineFromPoint:CGPointMake(10, 250) toPoint:CGPointMake(310, 250) controlP:CGPointMake(120, 20)];
    
}


//画曲线
- (void)drawArcLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint controlP:(CGPoint)cPoint
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:fromPoint];

    [path addQuadCurveToPoint:toPoint controlPoint:cPoint];
    
    CGContextAddPath(ctx, path.CGPath);
    
    CGContextStrokePath(ctx);
    
}
//画直线
- (void)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint
{
    CGContextRef crf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:fromPoint];
    [path addLineToPoint:toPoint];
    
    CGContextAddPath(crf, path.CGPath);
    
    //设置线宽
    CGContextSetLineWidth(crf, 10);
    
    //设置圆角
    CGContextSetLineCap(crf, kCGLineCapRound);
    
    //设置颜色
    [[UIColor redColor] set];
    
    //渲染
    CGContextStrokePath(crf);
}
@end
