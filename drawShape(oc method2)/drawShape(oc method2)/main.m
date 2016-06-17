//
//  main.m
//  drawShape(oc method2)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Shape:NSObject//类
{
    int _x;//声明变量
    int _y;
    int _width;
    int _height;
    NSString *_color;
    NSString *_type;
}
-(void)setX:(int)x andY:(int)y andWidth:(int)w andHeight:(int)h andColor:(NSString *)color andType:(NSString *)type;
-(void)draw;
@end

@implementation Shape
//setter 方法
-(void)setX:(int)x andY:(int)y andWidth:(int)w andHeight:(int)h andColor:(NSString *)color andType:(NSString *)type
{
    _x=x;
    _y=y;
    _width=w;
    _height=h;
    _color=color;
    _type=type;
}
-(void)draw
{
    NSLog(@"draw a %@ at (%d,%d,%d,%d) with %@",_type,_x,_y,_width,_height,_color);
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //方法一
        Shape *shape1=[Shape new];
        [shape1 setX:2 andY:3 andWidth:31 andHeight:3 andColor:@"蓝色" andType:@"圆形"];
        [shape1 draw];
        Shape *shape2=[Shape new];
        [shape2 setX:2 andY:3 andWidth:31 andHeight:3 andColor:@"红色" andType:@"椭圆形"];
        [shape2 draw];
        Shape *shape3=[Shape new];
        [shape3 setX:2 andY:3 andWidth:31 andHeight:3 andColor:@"黄色" andType:@"三角形"];
        [shape3 draw];
        //方法二
        NSLog(@">>>>>方法二<<<<<");
        Shape* myshape[3];
        for (int i=0; i<3; i++)//for 循环
        {
            //初始化对象
            myshape[i]=[Shape new];
            //设置属性
            switch (i)
            {
                case 0:
                    [myshape[i] setX:1 andY:2 andWidth:2 andHeight:3 andColor:@"橘黄色" andType:@"方形"];
                    break;
                case 1:
                    [myshape[i] setX:4 andY:3 andWidth:4 andHeight:5 andColor:@"紫色" andType:@"菱形"];
                    break;
                case 2:
                    [myshape[i] setX:3 andY:3 andWidth:4 andHeight:45 andColor:@"白色" andType:@"梯形"];
                    break;
                    
                default:
                    break;
            }
            [myshape[i] draw];
        }
        
    }
    return 0;
}
