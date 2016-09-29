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
#import "LoginDataRequest.h"
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
    [self bindClass:[LoginViewController class] toProtocol:@protocol(LoginViewControllerProtocol)];
}

- (id)dataRequestWithUsername:(NSString *)userName password:(NSString *)password LoginRequestResultBlock:(LoginDataResultBlock)block
{
    LoginDataRequest *loginDataRequest = [[LoginDataRequest alloc] initWithUsername:userName password:password];
    [loginDataRequest startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request)
    {
        block(request.responseJSONObject,request.responseStatusCode);
    }
                                                  failure:^(__kindof YTKBaseRequest * _Nonnull request)
    {
        block(request.responseJSONObject,request.responseStatusCode);
    }];
    
    return nil;
}
@end
