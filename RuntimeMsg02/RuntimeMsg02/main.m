//
//  main.m
//  RuntimeMsg02
//
//  Created by dqh on 16/12/14.
//  Copyright © 2016年 duqianhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Person *aPerson = [[Person alloc] init];

        ((void (*)(id,SEL))objc_msgSend)((id)aPerson,@selector(play));
    }
    return 0;
}
