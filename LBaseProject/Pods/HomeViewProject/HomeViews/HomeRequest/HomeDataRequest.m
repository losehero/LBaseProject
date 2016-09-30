//
//  HomeDataRequest.m
//  HomeDemo
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "HomeDataRequest.h"
@interface HomeDataRequest()
{
    NSString *_count;
    NSString *_cursor;
    NSString *_relative;
    NSString *_type;
}
@end


@implementation HomeDataRequest

- (id)initRequestWithCount:(NSString *)count cursor:(NSString *)cursor relative:(NSString *)relative type:(NSString *)type
{
    self = [super self];
    if (self)
    {
        _count = count;
        _cursor = cursor;
        _relative = relative;
        _type = type;
    }
    return self;
}


- (NSString *)requestUrl
{
    return @"/topic/list/jingxuan/41/nhxh0808-iphone-4.3/1475129882-30.json";
}

- (YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

@end
