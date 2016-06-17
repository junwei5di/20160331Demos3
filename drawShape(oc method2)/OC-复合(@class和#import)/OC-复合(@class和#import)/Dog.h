//
//  Dog.h
//  OC-复合(@class和#import)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Dog : NSObject
{
    NSString *_dName;
    Person *_dMaster;
}
-(void)setDName:(NSString *)name;
-(void)setDMaster:(Person *)master;
-(NSString *)dName; //getter方法
-(void)showDog;
@end
