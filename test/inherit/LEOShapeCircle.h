//
//  LEOShapeCircle.h
//  ios-learn1
//
//  Created by Antony x on 2018/10/23.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "LEOShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface LEOShapeCircle : LEOShape
-(id)initWithRad: (int)_rad;
-(double)area;
@end

NS_ASSUME_NONNULL_END
