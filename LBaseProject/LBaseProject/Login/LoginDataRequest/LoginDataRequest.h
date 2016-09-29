//
//  LoginDataRequest.h
//  LBaseProject
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface LoginDataRequest : YTKRequest
- (id)initWithUsername:(NSString *)username password:(NSString *)password;
@end
