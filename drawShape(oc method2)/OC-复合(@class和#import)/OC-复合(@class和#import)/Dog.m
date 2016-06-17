//
//  Dog.m
//  OC-复合(@class和#import)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)setDMaster:(Person *)master
{
    _dMaster=master;
}
-(void)setDName:(NSString *)name
{
    _dName=name;
}
-(NSString *)dName
{
    return _dName;
}
-(void)showDog
{
    NSLog(@"Dog:%@的主人是:%@",_dName,[_dMaster pName]);
}

//重写
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@的主人是:%@",_dName,[_dMaster pName]];
}
@end
