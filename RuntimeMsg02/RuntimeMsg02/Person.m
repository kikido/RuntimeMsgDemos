//
//  Person.m
//  RuntimeMsg02
//
//  Created by dqh on 16/12/14.
//  Copyright © 2016年 duqianhang. All rights reserved.
//

#import "Person.h"
#import "Student.h"

@implementation Person

//第一步：我们不动态添加方法，返回NO，进入第二步；
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    return NO;
}

//第二部：我们指定备选对象响应aStudent;
- (id)forwardingTargetForSelector:(SEL)aSelector
{
    Student *aStudent = [[Student alloc] init];
    return aStudent;
}

@end
