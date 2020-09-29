# UILabelTextAlign
UILabel设置顶、左、右、底部对齐

使用方法：
* 上中对齐

```
[label textAlign:^(ZWMaker *maker) {
   maker.addAlignType(textAlignType_top).addAlignType(textAlignType_center);
   // maker.top().center();
}];
 ```
 
 * 左中对齐

```
[label textAlign:^(ZWMaker *maker) {
   maker.addAlignType(textAlignType_left).addAlignType(textAlignType_center);
   // maker.left().center();
}];
 ```
 
 * 右中对齐

```
[label textAlign:^(ZWMaker *maker) {
   maker.addAlignType(textAlignType_right).addAlignType(textAlignType_center);
   // maker.right().center();
}];
 ```
 
 * 底中对齐

```
[label textAlign:^(ZWMaker *make) {
   make.addAlignType(textAlignType_bottom).addAlignType(textAlignType_center);
   // maker.bottom().center();
}];
 ```
