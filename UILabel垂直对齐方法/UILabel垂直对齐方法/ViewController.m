//
//  ViewController.m
//  UILabel垂直对齐方法
//
//  Created by rayootech on 16/6/15.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ViewController.h"
#import "ZWAlignLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (int i=0; i<6; i++) {
        CGFloat y = 50 + i * (60 + 10);
        ZWAlignLabel *label=[[ZWAlignLabel alloc]initWithFrame:CGRectMake(100,y, 200, 60)];
        label.backgroundColor =[UIColor lightGrayColor];
        label.font = [UIFont systemFontOfSize:14.0];
        label.text = @"你好";
        //label.textAlignment = NSTextAlignmentRight;
        switch (i) {
            case 0:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.left().center();
                }];
            break;
            case 1:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.right().center();
                }];
            break;
            case 2:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.bottom().center();
                }];
            break;
            case 3:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.top().center();
                }];
            break;
            case 4:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.center();
                }];
            break;
            case 5:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.left();
                }];
            break;
            default:
                break;
        }
        label.textColor = [UIColor whiteColor];
        label.numberOfLines = 0;
        [self.view addSubview:label];
    }
    
    for (int i=0; i<6; i++) {
        CGFloat y = 470 + i * (60 + 10);
        ZWAlignLabel *label=[[ZWAlignLabel alloc]initWithFrame:CGRectMake(5, y, 400, 60)];
        label.backgroundColor =[UIColor lightGrayColor];
        label.font = [UIFont systemFontOfSize:14.0];
       // label.text = @"你好";
        // 设置字体属性NSFontAttributeName，默认值：字体：Helvetica(Neue) 字号：12
        NSMutableAttributedString *textFont = [[NSMutableAttributedString alloc] initWithString:@"NSAttributedString设置字体大小"];
        [textFont addAttribute:NSFontAttributeName
                         value:[UIFont boldSystemFontOfSize:18.0]
                         range:[@"NSAttributedString设置字体大小" rangeOfString:@"NSAttributedString"]];
        label.attributedText = textFont;
        //label.textAlignment = NSTextAlignmentRight;
        switch (i) {
            case 0:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.left().center();
                }];
            break;
            case 1:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.right().center();
                }];
            break;
            case 2:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.bottom().center();
                }];
            break;
            case 3:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.top().center();
                }];
            break;
            case 4:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.center();
                }];
            break;
            case 5:
                [label textAlign:^(ZWMaker *maker) {
                    // make.addAlignType(TextAlignType_bottom).addAlignType(TextAlignType_center);
                    maker.left();
                }];
            break;
            default:
                break;
        }
        label.textColor = [UIColor whiteColor];
        label.numberOfLines = 0;
        [self.view addSubview:label];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
