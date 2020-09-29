//
//  ZWAlignLabel.h
//  UILabel垂直对齐方法
//
//  Created by rayootech on 16/6/15.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TextAlignType) {
  TextAlignType_top = 1,   // 顶部对齐
  TextAlignType_left,       // 左边对齐
  TextAlignType_bottom,     // 底部对齐
  TextAlignType_right,      // 右边对齐
  TextAlignType_center      // 水平/垂直对齐（默认中心对齐）
};


@class ZWMaker;

typedef ZWMaker *(^ZWMakerBlock)(void);
typedef ZWMaker *(^ZWMakerTypeBlock)(TextAlignType alignType);

@interface ZWAlignLabel : UILabel
/**
 *  根据设置的对齐方式进行文本对齐
 *
 *  @param alignType 对齐block
 */
-(void)textAlign: (void(^)(ZWMaker *maker))alignType;

@end


//工具类
@interface ZWMaker : NSObject

// 存放对齐样式
@property (nonatomic,strong, readonly) NSMutableArray *typeArray;

/**
 *  添加顶部对齐样式
 *  @return ZWMaker 实例对象
 */
-(ZWMakerBlock)top;

/**
 *  添加左侧对齐样式, 默认从左上开始布局
 *  @return ZWMaker 实例对象
 */
-(ZWMakerBlock)left;

/**
 *  添加底部对齐样式, 默认从左下开始布局
 *  @return ZWMaker 实例对象
 */
-(ZWMakerBlock)bottom;

/**
 *  添加右侧对齐样式
 *  @return type TextAlignType布局方向
 *  @return ZWMaker 实例对象
 */
-(ZWMakerBlock)right;

/**
 *  添加中间对齐样式
 *  @return type TextAlignType布局方向
 *  @return ZWMaker 实例对象
 */
-(ZWMakerBlock)center;

/**
 *  添加对齐样式
 *  @return type TextAlignType布局方向
 *  @return ZWMaker 实例对象
 */
-(ZWMakerTypeBlock)addAlignType;

@end


