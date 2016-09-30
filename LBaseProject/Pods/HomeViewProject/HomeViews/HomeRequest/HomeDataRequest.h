//
//  HomeDataRequest.h
//  HomeDemo
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface HomeDataRequest : YTKRequest
- (id)initRequestWithCount:(NSString *)count cursor:(NSString *)cursor relative:(NSString *)relative type:(NSString *)type;
@end
