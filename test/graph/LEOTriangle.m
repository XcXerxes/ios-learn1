//
//  LEOTriangle.m
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import "LEOTriangle.h"

@implementation LEOTriangle
- (void)setBottom:(int)bottom andHeight:(int)height {
    self->bottom = bottom;
    self->height = height;
}
- (double)area{
    return bottom * height / 2;
}
@end
