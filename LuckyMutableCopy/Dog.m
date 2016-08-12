//
//  Dog.m
//  LuckyMutableCopy
//
//  Created by crx on 16/8/11.
//  Copyright © 2016年 shxl. All rights reserved.
//

#import "Dog.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation Dog
- (id)mutableCopyWithZone:(NSZone *)zone{
    id dog = [[[self class] allocWithZone:zone] init];
    
    
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *key = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:key];
        [dog setValue:value forKey:key];
    }
    
    return dog;
}

+ (void)test{
    NSLog(@"%s", __func__);
}

+ (void)haha{
    [self test];
}
@end
