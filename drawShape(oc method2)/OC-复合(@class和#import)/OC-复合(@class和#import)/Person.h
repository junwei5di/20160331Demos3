//
//  Person.h
//  OC-复合(@class和#import)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Dog.h"//#表示预编译，当我们要使用一个类的时候，该类必须预编译完成！两个头文件相互复合就会出现错误！我们需要把其中的一个头文件包含改写为@class
@class Dog;//仅仅只说明Dog是一个类，不用去管该类有哪些属性和方法。#import它是包含头文件的意思，相当于把该类中所有的属性和方法拷贝过来！
//如果在.m里面还需要使用该类的属性或者行为，则只需要在.m里面#import
@interface Person : NSObject
{
    NSString *_pName;
    Dog *_dog;//声明狗的属性
}
-(void)setPName:(NSString *)name;
-(void)setDog:(Dog *)dog;
-(void)showPerson;
-(NSString *)pName;//getter方法
@end
