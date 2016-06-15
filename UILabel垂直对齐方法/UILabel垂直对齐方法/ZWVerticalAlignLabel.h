//
//  ZWVerticalAlign.h
//  UILabel垂直对齐方法
//
//  Created by rayootech on 16/6/15.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,textAlignType)
{
  textAlignType_top = 10,   //顶部对齐
  textAlignType_left,       //左边对齐
  textAlignType_bottom,     //底部对齐
  textAlignType_right,      //右边对齐
  textAlignType_center      //水平/垂直对齐（默认中心对齐）
};

@class ZWMaker;
@interface ZWVerticalAlignLabel : UILabel
/**
 *  根据设置的对齐方式进行文本对齐
 *
 *  @param alignType 对齐block
 */
-(void)textAlign: (void(^)(ZWMaker *make))alignType;

@end




//工具类
@interface ZWMaker : NSObject

/* 存放对齐样式 */
@property(nonatomic,strong)NSMutableArray *typeArray;

/**
 *  添加对齐样式
 */
-(ZWMaker *(^)(textAlignType type))addAlignType;

@end


