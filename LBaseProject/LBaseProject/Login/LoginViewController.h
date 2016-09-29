//
//  LoginViewController.h
//  LBaseProject
//
//  Created by jinlong9 on 16/9/28.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginProtocols.h"
@interface LoginViewController : UIViewController <LoginViewControllerProtocol>
@property (nonatomic) NSString *loginTitle;
@end
