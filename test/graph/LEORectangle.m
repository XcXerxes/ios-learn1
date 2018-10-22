//
//  LEORectangle.m
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import "LEORectangle.h"

@implementation LEORectangle

-(void)setWidth:(int)_width {
    width = _width;
}
- (void)setHeight:(int)_height{
    height = _height;
}
- (int)area {
    return width * height;
}
/**
 类的行为使用场景
 1、创建类的对象
 2、共享数据， 需要多个地方调用时
 */
// 初始化类的对象
+(id)rectangle{
    return [[[self class]alloc]init];
}

@end
