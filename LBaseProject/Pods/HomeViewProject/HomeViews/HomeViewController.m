//
//  HomeViewController.m
//  HomeDemo
//
//  Created by jinlong9 on 16/9/27.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (nonatomic,strong) UILabel *contentLabel;
@end

@implementation HomeViewController

-(UILabel *)contentLabel
{
    if (!_contentLabel)
    {
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _contentLabel.backgroundColor = [UIColor redColor];
        _contentLabel.text = self.labelContentStr;
        _contentLabel.center = self.view.center;
    }

    return _contentLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.contentLabel];
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
