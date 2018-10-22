//
//  main.m
//  test
//
//  Created by Antony x on 2018/10/3.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Student.h"
#import "LEOSum.h"
#import "graph/LEORectangle.h"
#import "graph/LEOSquare.h"
#import "graph/LEOCircle.h"
#import "graph/LEOTriangle.h"

//@interface Student : NSObject
//{
//    NSString * name;
//    int age;
//}
//-(void)say;
//@end
//
//@implementation Student
//
//-(void) say {
//    NSLog(@"我叫%@, 我%d 岁了！", name, age);
//}
//
//@end

// 类是如何实现的.....

/**
 
 类是由两部分组成： 1 是类的申明部分 .h文件    2 是类的实现部分 .m文件
 申明部分的语法 @int 类的名称： 父类的名称
 {
    类的数据的定义
 }
 行为的申明(函数的申明)
 @end
 
 实现部分的语法 @implementation 类的名称
 行为的实现(函数的实现)
 @end
 */


int main(int argc, char * argv[]) {
    @autoreleasepool {
        Student *lisi = [[Student alloc] init];
//        [lisi setName:@"李四"];
//        [lisi setAge:22];
        [lisi setName:@"李四" andAge: 22];
        [lisi say];
        LEOSum *sum = [[LEOSum alloc] init];
        [sum setN: 100];
        int s = [sum sum];
        NSLog(@"sum ==== %d", s);
        
        // 计算长方形的面积
        // LEORectangle *rect = [[LEORectangle alloc]init];
        LEORectangle *rect = [LEORectangle rectangle];
        [rect setWidth:200];
        [rect setHeight: 100];
        NSLog(@"%d =========", [rect area]);
        
        // 计算正方形的面积
        LEOSquare *square = [[LEOSquare alloc]init];
        [square setSide:100];
        NSLog(@"正方形的面积是============%d", [square area]);
        
        // 计算圆的面积
        LEOCircle *circle = [[LEOCircle alloc]init];
        [circle setRad:100];
        double d = [circle area];
        NSLog(@"c圆的面积是==============%g", d);
        
        // 三角形的面积
        LEOTriangle *triangle = [[LEOTriangle alloc]init];
        [triangle setBottom:200 andHeight:50];
        double t = [triangle area];
        NSLog(@"三角形的面积是============%g", t);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
