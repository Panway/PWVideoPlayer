//
//  PWDeviceTool.m
//  PWVideoPlayer
//
//  Created by apple on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import "PWDeviceTool.h"
#include <sys/sysctl.h>


@implementation PWDeviceTool

+ (void)interfaceOrientation:(UIInterfaceOrientation)orientation{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val  = orientation;
        // 从2开始是因为0 1 两个参数已经被selector和target占用
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}


@end
