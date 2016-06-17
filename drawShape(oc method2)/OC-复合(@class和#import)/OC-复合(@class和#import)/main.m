//
//  main.m
//  OC-复合(@class和#import)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h" //必须导入全都是import的头文件！

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d1=[Dog new];
        [d1 setDName:@"小黄"];
        
        Person *p1=[Person new];
        [p1 setDog:d1];
        [p1 setPName:@"小明"];
        //打印p1的所有信息
        [p1 showPerson];
        //方法二打印
        NSLog(@"%@",p1);//当用%@打印对象，会自动进入description方法,如果不重写，则直接打印内存
        
        [d1 setDMaster:p1];//必须在这之前定义Person对象
        //打印d1的所有信息
        [d1 showDog];
        //打印方法二
        NSLog(@"%@",d1);
    }
    return 0;
}
