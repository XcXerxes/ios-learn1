//
//  Student.h
//  test
//
//  Created by Antony x on 2018/10/12.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    NSString *name;
    int age;
}

// -(返回类型)函数名字： (参数的类型) 参数的名字 标签: (参数的类型) 参数的名字...
-(void)say;
-(void)setName: (NSString *)_name;
-(void)setAge: (int)_age;
-(void)setName:(NSString *)_name andAge:(int)_age;
@end

NS_ASSUME_NONNULL_END
