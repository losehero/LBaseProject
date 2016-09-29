//
//  LoginViewController.m
//  LBaseProject
//
//  Created by jinlong9 on 16/9/28.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (nonatomic,strong) UILabel *contentLabel;
@end

@implementation LoginViewController


- (UILabel *)contentLabel
{
    if (!_contentLabel)
    {
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _contentLabel.backgroundColor = [UIColor redColor];
        _contentLabel.center = self.view.center;
        _contentLabel.text = self.loginTitle;
        _contentLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _contentLabel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.view addSubview:[self contentLabel]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
