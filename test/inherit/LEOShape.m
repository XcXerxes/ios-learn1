//
//  LEOShape.m
//  ios-learn1
//
//  Created by Antony x on 2018/10/23.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "LEOShape.h"

@implementation LEOShape
//// 重写父类中的 init
//- (id) init {
//    self = [super init];
//    if (self) {
//        width = 0;
//        height = 0;
//    }
//    return self;
//}

// 自己定制的初始化行为
-(id) initWithWidth:(int)_width andWithHeight:(int)_height {
    // 必须去调用父类的初始化行为
    self = [super init];
    if (self) { // 如果父类初始化成功
        // 初始化自己的数据
        width = _width;
        height = _height;
    }
    return self;
}
- (int)area {
    return width * height;
}
@end
