//
//  LoginDataRequest.m
//  LBaseProject
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "LoginDataRequest.h"

@implementation LoginDataRequest{
    NSString *_username;
    NSString *_password;
}

- (id)initWithUsername:(NSString *)username password:(NSString *)password
{
    self = [super self];
    if (self)
    {
        _username = username;
        _password = password;
    }
    return self;
}


- (NSString *)requestUrl
{
    return @"/free/114/login";
}

- (YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

- (id)requestArgument
{
    return @{@"name":_username,@"sfzh":_password};
}
@end
