//
//  Student.m
//  test
//
//  Created by Antony x on 2018/10/12.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)say {
    NSLog(@"name=%@, age=%d", name, age);
}
-(void)setName:(NSString *)_name {
    name = _name;
}
-(void)setAge:(int)_age {
    age = _age;
}
-(void)setName:(NSString *)_name andAge:(int)_age {
    name = _name;
    age = _age;
}
@end
