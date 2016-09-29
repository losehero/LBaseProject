//
//  LoginProtocols.h
//  LBaseProject
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LUser.h"

typedef void (^LoginDataResultBlock)(NSDictionary *result,NSInteger requestStatus);

@protocol LoginViewControllerProtocol <NSObject>
@property (nonatomic) NSString *loginTitle;
@end


@protocol LoginViewModelProtocol <NSObject>
@property (nonatomic) LUser *user;
- (id)dataRequestWithUsername:(NSString *)userName password:(NSString *)password LoginRequestResultBlock:(LoginDataResultBlock)block;
@end
