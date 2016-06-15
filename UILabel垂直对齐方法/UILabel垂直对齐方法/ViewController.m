//
//  ViewController.m
//  UILabel垂直对齐方法
//
//  Created by rayootech on 16/6/15.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ViewController.h"
#import "ZWVerticalAlignLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ZWVerticalAlignLabel *label=[[ZWVerticalAlignLabel alloc]initWithFrame:CGRectMake(100,100,200, 60)];
    label.backgroundColor =[UIColor greenColor];
    label.font = [UIFont systemFontOfSize:14.0];
    label.text = @"你好";
//    label.textAlignment = NSTextAlignmentRight;
    [label textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_bottom).addAlignType(textAlignType_center);
    }];
    
    label.textColor=[UIColor lightGrayColor];
    label.numberOfLines=0;
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
