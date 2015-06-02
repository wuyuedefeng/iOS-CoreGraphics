//
//  ViewController.m
//  CGGraphicsLearn
//
//  Created by senwang on 15/6/1.
//  Copyright (c) 2015年 senwang. All rights reserved.
//

#import "ViewController.h"
#import "WSLineView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WSLineView *lineView = [[WSLineView alloc] initWithFrame:self.view.bounds];
    lineView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lineView];
    
    [self setBgView2];
}

- (void)setBgView
{
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(10, 200, 300, 300)];
    bgView.backgroundColor = [UIColor whiteColor];
    [bgView.layer setBorderWidth:0.5f];
    [bgView.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    
    [self.view addSubview:bgView];
}

- (void)setBgView2
{
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(10, 200, 300, 300)];
   
    bgView.backgroundColor = [UIColor grayColor];
    [bgView.layer setCornerRadius: 10.9];
    [bgView.layer setShadowOffset:CGSizeMake(0, 0)];
    [bgView.layer setShadowRadius:10.f];//设置阴影半径
    [bgView.layer setShadowColor:[UIColor redColor].CGColor];
    bgView.layer.shadowOpacity = 1;
    [self.view addSubview:bgView];
}

@end
