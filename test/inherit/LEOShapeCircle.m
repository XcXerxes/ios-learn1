//
//  LEOShapeCircle.m
//  ios-learn1
//
//  Created by Antony x on 2018/10/23.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "LEOShapeCircle.h"

@implementation LEOShapeCircle
- (id)initWithRad:(int)_rad {
    self = [super initWithWidth:_rad andWithHeight:_rad];
    return self;
}
- (double)area{
    return 3.14 * [super area];
}
@end
