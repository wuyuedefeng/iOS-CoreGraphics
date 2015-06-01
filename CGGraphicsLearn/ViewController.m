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
    lineView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:lineView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
