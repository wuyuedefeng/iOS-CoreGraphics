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
//    [self drawLineFromPoint:CGPointMake(10, 250) toPoint:CGPointMake(310, 250)];
    //曲线
    [self drawArcLineFromPoint:CGPointMake(10, 250) toPoint:CGPointMake(310, 250) controlP:CGPointMake(120, 20)];
    //二次曲线
//    [self drawQuadCurveLineFromPoint:CGPointMake(10, 250) toPoint:CGPointMake(310, 250) controlP:CGPointMake(120, 20)];
    
}


//二次曲线函数、、http://donbe.blog.163.com/blog/static/138048021201052093633776/
- (void)drawQuadCurveLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint controlP:(CGPoint)cPoint
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:fromPoint];

    [path addQuadCurveToPoint:toPoint controlPoint:cPoint];
    
    //设置颜色
    [[UIColor blueColor] set];
    
    CGContextAddPath(ctx, path.CGPath);
    
    CGContextStrokePath(ctx);
    
}
///曲线
- (void)drawArcLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint controlP:(CGPoint)cPoint
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
//    [path moveToPoint:fromPoint];
//    
//    [path addCurveToPoint:fromPoint controlPoint1:cPoint controlPoint2:toPoint];
    
    [path addArcWithCenter:CGPointMake(120, 120) radius:100 startAngle:0 endAngle:M_PI_2 clockwise:YES];
    
    //设置颜色
    [[UIColor greenColor] set];
    
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
