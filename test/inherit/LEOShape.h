//
//  LEOShape.h
//  ios-learn1
//
//  Created by Antony x on 2018/10/23.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LEOShape : NSObject
{
    int width;
    int height;
}
-(id)initWithWidth: (int)_width andWithHeight: (int)_height;
-(int)area;
@end

NS_ASSUME_NONNULL_END
