//
//  LEOCircle.m
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import "LEOCircle.h"

@implementation LEOCircle
- (void)setRad:(int)_rad{
    rad = _rad;
}
- (double)area{
    return 3.14 * rad * rad;
}
@end
