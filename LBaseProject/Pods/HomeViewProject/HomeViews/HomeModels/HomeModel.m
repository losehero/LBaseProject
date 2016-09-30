//
//  HomeModel.m
//  HomeDemo
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "HomeModel.h"
#import "HomeDataRequest.h"
@implementation HomeModel
- (void)dataRequestWithCount:(NSString *)count
                      cursor:(NSString *)cursor
                    relative:(NSString *)relative
                        type:(NSString *)type
                   dataBlock:(HomeDataBlock)resultBlock
{
    HomeDataRequest *request = [[HomeDataRequest alloc] initRequestWithCount:count
                                                                      cursor:cursor
                                                                    relative:relative
                                                                        type:type];
    
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request)
    {
        self.rows = [NSMutableArray arrayWithArray:[request.responseJSONObject objectForKey:@"list"]];
        resultBlock(request.responseStatusCode);
    }
                                         failure:^(__kindof YTKBaseRequest * _Nonnull request)
    {
        resultBlock(request.responseStatusCode);
    }];
    
}
@end
