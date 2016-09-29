//
//  LoginModel.h
//  LBaseProject
//
//  Created by jinlong9 on 16/9/28.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import <Objection/Objection.h>
#import "LoginProtocols.h"
@interface LoginModel : JSObjectionModule<LoginViewModelProtocol>
@property (nonatomic) LUser *user;
@end
