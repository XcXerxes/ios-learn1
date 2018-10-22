//
//  LEOSquare.m
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import "LEOSquare.h"

@implementation LEOSquare
- (void)setSide:(int)_side {
    side = _side;
}
- (int)area {
    return side * side;
}
@end
