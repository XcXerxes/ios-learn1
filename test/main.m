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
#import "inherit/LEOShape.h"
#import "inherit/LEOShapeRectangle.h"
#import "inherit/LEOShapeSquare.h"
#import "inherit/LEOShapeCircle.h"
#import "inherit/LEOShapeTriangle.h"

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


/**
 
 多态。 使不同的类共享相同的方法名称的能力
 */

void poly () {
    // LEOShapeSquare *square1 = [[LEOShapeSquare alloc]initWithSide:10];
    // LEOShape * shape1 = square1;
    // 动态绑定id
    id s = [[LEOShapeSquare alloc]initWithSide:10];
    /* 判断 对象 是否是 类的成员
     
     @isKindOfClass 可以判断继承链上的所有类
     @isMemberOfClass 只能判断上一级的类
     **/
    // BOOL b = [s isKindOfClass:[LEOShapeSquare class]];
    BOOL b = [s isMemberOfClass:[LEOShapeSquare class]];
    
    if (b) {
        NSLog(@"this is square");
    } else {
        NSLog(@"this is not square");
    }
    
    /*
     判断 对象是否拥有 此方法
     @repondsTo
     */
    SEL sel = @selector(area);
    BOOL boo = [s respondsToSelector:sel];
    if (boo) {
        NSLog(@"area is exist!!");
        [s performSelector:sel];
    }else{
        NSLog(@"area is not exist!!");
    }
    
    
    // NSLog(@"正方形的面积=======%@", [s area]);
}

/**
 图形类的实现
 */
void calcShape () {
    // LEOShape *shape = [[LEOShape alloc]init];
    // 自定义的初始化方法
    LEOShape *shape = [[LEOShape alloc]initWithWidth:20 andWithHeight:10];
    NSLog(@"area ===========%d", [shape area]);
    
    /*
     图形类 ---> 长方形
     **/
    LEOShapeRectangle *shapeRect = [[LEOShapeRectangle alloc]initWithWidth:20 andWithHeight:5];
    NSLog(@"长方形的面积============%d", [shapeRect area]);
    
    /*
     图形类 -------> 正方形
     LEO
     */
    LEOShapeSquare *shapeSquare = [[LEOShapeSquare alloc]initWithSide:10];
    NSLog(@"正方形的面积============%d", [shapeSquare area]);
    
    /**
     图形类 ---------> 圆形
     */
    LEOShapeCircle *shapeCircle = [[LEOShapeCircle alloc]initWithRad:10];
    NSLog(@"圆的面积 ============= %g", [shapeCircle area]);
    
    /*
     图形类 --------> 三角形
     **/
    LEOShapeTriangle *shapeTriangle = [[LEOShapeTriangle alloc]initWithBottom:20 andWithHeight:10];
    NSLog(@"s三角形的面积是============ %g", [shapeTriangle area]);
}

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
//        [rect setWidth:200];
//        [rect setHeight: 100];
        rect.width = 200; // .操作符其实是一个行为的调用 如果对 . 赋值的话就是调用 setWidth 行为。 获取值的时候就是去调用
        int w = rect.width;
        rect.height = 100;
        NSLog(@"%d =========", [rect area]);
        
        // 计算正方形的面积
        LEOSquare *square = [[LEOSquare alloc]init];
        //[square setSide:100];
        square->side = 100;
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
        
        
        
        /*
         图形类 调用
         */
        calcShape();
        
        // 多态
        poly();
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
