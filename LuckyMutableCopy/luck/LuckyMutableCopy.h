//
//  LuckyMutableCopy.h
//  LuckyMutableCopy
//
//  Created by crx on 16/8/11.
//  Copyright © 2016年 shxl. All rights reserved.
//
#import <objc/runtime.h>
#import <objc/message.h>
#ifndef LuckyMutableCopy_h
#define LuckyMutableCopy_h

#define LuckyMutableCopyImplementation \
- (id)mutableCopyWithZone:(NSZone *)zone{ \
id object = [[[self class] allocWithZone:zone] init]; \
 \
unsigned int count = 0; \
Ivar *ivars = class_copyIvarList([self class], &count); \
for (int i = 0; i < count; i++) { \
    Ivar ivar = ivars[i]; \
    const char *name = ivar_getName(ivar); \
    NSString *key = [NSString stringWithUTF8String:name]; \
    id value = [self valueForKey:key]; \
    [object setValue:value forKey:key]; \
} \
 \
return object; \
} \


#endif /* LuckyMutableCopy_h */
