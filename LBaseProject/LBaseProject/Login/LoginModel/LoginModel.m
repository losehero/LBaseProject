//
//  LoginModel.m
//  LBaseProject
//
//  Created by jinlong9 on 16/9/28.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "LoginModel.h"
#import <Objection.h>
#import "LoginProtocols.h"
#import "LoginViewController.h"

@implementation LoginModel

+ (void)load
{
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:injector];
}


- (void)configure
{
    [self bindClass:[LoginViewController class] toProtocol:@protocol(LoginViewControllerProtocols)];
}

@end
