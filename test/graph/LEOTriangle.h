//
//  LEOTriangle.h
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LEOTriangle : NSObject
{
    int bottom;
    int height;
}
-(double)area;
-(void)setBottom: (int)bottom andHeight: (int)height;
@end

NS_ASSUME_NONNULL_END
