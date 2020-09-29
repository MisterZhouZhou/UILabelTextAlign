//
//  ZWAlignLabel.m
//  UILabel垂直对齐方法
//
//  Created by rayootech on 16/6/15.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "ZWAlignLabel.h"

@interface ZWAlignLabel ()

/* 对齐方式 */
@property (nonatomic,strong) NSArray *typeArray;
// 上
@property (nonatomic,assign) BOOL hasTop;
// 左
@property (nonatomic,assign) BOOL hasLeft;
// 下
@property (nonatomic,assign) BOOL hasBottom;
// 右
@property (nonatomic,assign) BOOL hasRight;

@end

@implementation ZWAlignLabel

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    if (!self.typeArray) {
        return textRect;
    }
    // 重置frame
    for (int i=0; i<self.typeArray.count; i++) {
        TextAlignType type = [self.typeArray[i] integerValue];
        switch (type) {
            case TextAlignType_top:  // 顶部对齐
                self.hasTop = YES;
                textRect.origin.y = bounds.origin.y;
                break;
            case TextAlignType_left: // 左部对齐
                self.hasLeft = YES;
                textRect.origin.x = bounds.origin.x;
                break;
            case TextAlignType_bottom: // 底部对齐
                self.hasBottom = YES;
                textRect.origin.y = bounds.size.height - textRect.size.height;
                break;
            case TextAlignType_right: // 右部对齐
                self.hasRight = YES;
                textRect.origin.x = bounds.size.width - textRect.size.width;
                break;
            case TextAlignType_center:
                if (self.hasTop) {  // 上中
                    textRect.origin.x = (bounds.size.width - textRect.size.width)*0.5;
                }
                else if (self.hasLeft) { // 左中
                    textRect.origin.y = (bounds.size.height - textRect.size.height)*0.5;
                }
                else if (self.hasBottom) { // 下中
                    textRect.origin.x = (bounds.size.width - textRect.size.width)*0.5;
                }
                else if (self.hasRight) { // 右中
                    textRect.origin.y = (bounds.size.height - textRect.size.height)*0.5;
                }
                else{   // 上下左右居中
                    textRect.origin.x = (bounds.size.width - textRect.size.width)*0.5;
                    textRect.origin.y = (bounds.size.height - textRect.size.height)*0.5;
                }
                break;
            default:
                break;
        }
    }
    
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = requestedRect;
    if (self.typeArray) {
      actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    }
    [super drawTextInRect:actualRect];
}

-(void)textAlign: (void(^)(ZWMaker *make))alignType {
    ZWMaker *maker = [[ZWMaker alloc]init];
    alignType(maker);
    self.typeArray = maker.typeArray;
}

@end


@interface ZWMaker()

/// 存放对齐样式
@property (nonatomic, strong, readwrite) NSMutableArray *typeArray;

@end

@implementation ZWMaker

-(instancetype)init {
    self = [super init];
    if (self) {
        self.typeArray = [NSMutableArray array];
    }
    return self;
}

-(ZWMakerTypeBlock)addAlignType {
    //__weak typeof (self) weakSelf = self;
    return ^(enum TextAlignType type) {
        [self.typeArray addObject:@(type)];
        return self;
    };
}

-(ZWMakerBlock)top {
    return ^(){
        return self.addAlignType(TextAlignType_top);
    };
}

-(ZWMakerBlock)left {
    return ^(){
        return self.addAlignType(TextAlignType_left);
    };
}

-(ZWMakerBlock)bottom {
    return ^(){
        return self.addAlignType(TextAlignType_bottom);
    };
}

-(ZWMakerBlock)right {
    return ^(){
        return self.addAlignType(TextAlignType_right);
    };
}

-(ZWMakerBlock)center {
    return ^(){
        return self.addAlignType(TextAlignType_center);
    };
}

@end
