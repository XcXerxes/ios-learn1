//
//  LEOSum.m
//  test
//
//  Created by Antony x on 2018/10/19.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "LEOSum.h"

@implementation LEOSum


-(void)setN: (int)_n {
    n = _n;
}
-(int)sum {
    int s = 0;
    for (int i = 1; i <= n; i++) {
        s += i;
    }
    return s;
}

@end
