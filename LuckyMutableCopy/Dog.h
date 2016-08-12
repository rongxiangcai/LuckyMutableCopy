//
//  Dog.h
//  LuckyMutableCopy
//
//  Created by crx on 16/8/11.
//  Copyright © 2016年 shxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject<NSMutableCopying>
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;

+ (void)test;
+ (void)haha;
@end
