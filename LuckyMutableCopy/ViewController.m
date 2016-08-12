//
//  ViewController.m
//  LuckyMutableCopy
//
//  Created by crx on 16/8/11.
//  Copyright © 2016年 shxl. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [Dog haha];
//    Dog *dog1 = [[Dog alloc] init];
//    dog1.name = @"dog1";
//    dog1.age = 15;
//    
//    Dog *dog2 = [dog1 mutableCopy];
    Cat *cat1 = [[Cat alloc] init];
    cat1.name = @"小猫";
    cat1.age = 28;
    
    Cat *cat2 = [cat1 mutableCopy];
    cat2.age = 15;
    
    NSLog(@"name=%@-----age=%d", cat2.name, cat2.age);
}

@end
