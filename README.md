# UILabelTextAlign
UILabel设置顶、左、右、底部对齐

目前只对普通文本起作用，富文本可能会有问题

使用方法：
* 上中对齐

```
[label textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_top).addAlignType(textAlignType_center);
    }];
 ```
 
 * 左中对齐

```
[label textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_left).addAlignType(textAlignType_center);
    }];
 ```
 
 * 右中对齐

```
[label textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_right).addAlignType(textAlignType_center);
    }];
 ```
 
 * 底中对齐

```
[label textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_bottom).addAlignType(textAlignType_center);
    }];
 ```
