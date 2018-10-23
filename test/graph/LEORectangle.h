//
//  LEORectangle.h
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LEORectangle : NSObject
{
    int width;
    int height;
}
-(void)setWidth: (int)_width;
-(void)setHeight: (int)_height;

/*
 获取属性值
 */
-(int)width;
-(int)height;

-(int)area;
+(id)rectangle;

@end

NS_ASSUME_NONNULL_END
