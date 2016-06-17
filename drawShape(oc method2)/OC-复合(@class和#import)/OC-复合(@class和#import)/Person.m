//
//  Person.m
//  OC-复合(@class和#import)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"
#import "Dog.h"

@implementation Person
-(void)setPName:(NSString *)name
{
    _pName=name;
}
-(void)setDog:(Dog *)dog
{
    _dog=dog;
}
-(void)showPerson
{
    NSLog(@"Person:%@养了一条狗:%@",_pName,[_dog dName]);
}
-(NSString *)pName
{
    return _pName;
}

//重写description方法  //重写是因为该方法已经存在，而且该方法无需声明和调用。继承自NSObject的所有类均可以使用该方法
-(NSString *)description
{
    NSString *str=[NSString stringWithFormat:@"%@养了一条狗:%@",_pName,[_dog dName]];
    return str;
}
@end
