//
//  LEOShapeTriangle.m
//  ios-learn1
//
//  Created by Antony x on 2018/10/23.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "LEOShapeTriangle.h"

@implementation LEOShapeTriangle
- (id)initWithBottom:(int)_bottom andWithHeight:(int)_height{
    self = [super initWithWidth:_bottom andWithHeight:_height];
    return self;
}
- (double)area {
    return [super area] / 2.0;
}
@end
