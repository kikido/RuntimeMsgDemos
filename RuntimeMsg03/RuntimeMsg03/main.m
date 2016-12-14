//
//  main.m
//  RuntimeMsg03
//
//  Created by dqh on 16/12/14.
//  Copyright © 2016年 duqianhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        ((void(*)(id, SEL)) objc_msgSend)((id)person, @selector(play));
    }
    return 0;
}
