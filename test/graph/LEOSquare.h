//
//  LEOSquare.h
//  ios-learn1
//
//  Created by xiacan on 2018/10/22.
//  Copyright © 2018 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LEOSquare : NSObject
{
    int side;
}
-(void)setSide: (int)_side;
-(int)area;
@end

NS_ASSUME_NONNULL_END
