//
//  Student.m
//  RuntimeMsg02
//
//  Created by dqh on 16/12/14.
//  Copyright © 2016年 duqianhang. All rights reserved.
//

#import "Student.h"
#import <objc/runtime.h>

@implementation Student

//响应方法
//- (void)play
//{
//    NSLog(@"小学生要玩啦");
//}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    // 我们没有给Student声明和实现play方法，我们这里动态添加方法
    if ([NSStringFromSelector(sel) isEqualToString:@"play"]) {
        
        class_addMethod(self, sel, (IMP)myPlay, "v@:");
        return YES;
        
    }
    return [super resolveInstanceMethod:sel];
}

void myPlay(id self, SEL cmd)
{
    NSLog(@"小学生要开始玩啦");
}

@end
