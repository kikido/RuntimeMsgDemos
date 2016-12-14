//
//  Person.m
//  RuntimeMsg01
//
//  Created by dqh on 16/12/14.
//  Copyright © 2016年 duqianhang. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation Person

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    // 我们没有给People类实现play方法，我们这里动态添加方法
    if ([NSStringFromSelector(sel) isEqualToString:@"play"]) {
        
        class_addMethod(self, sel, (IMP)myPlay, "v@:");
        
    }
        
    return [super resolveInstanceMethod:sel];
}

void myPlay(id self, SEL cmd)
{
    NSLog(@"我要出去玩啦");
}

@end
