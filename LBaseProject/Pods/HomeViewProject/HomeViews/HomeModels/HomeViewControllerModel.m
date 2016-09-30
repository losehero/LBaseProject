//
//  HomeViewControllerModel.m
//  HomeDemo
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "HomeViewControllerModel.h"
#import "HomeViewController.h"
#import "HomeProtocol.h"
@implementation HomeViewControllerModel
+ (void)load
{
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:injector];
}

- (void)configure
{
    [self bindClass:[HomeViewController class] toProtocol:@protocol(HomeViewControllerProtocol)];
}
@end
