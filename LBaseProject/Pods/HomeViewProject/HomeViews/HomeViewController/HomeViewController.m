//
//  HomeViewController.m
//  HomeDemo
//
//  Created by jinlong9 on 16/9/27.
//  Copyright © 2016年 losehero. All rights reserved.
//
#import <SDWebImage/UIImageView+WebCache.h>
#import "HomeViewController.h"
#import <Masonry/Masonry.h>
#import "HomeModel.h"
#import "HomeCell.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong) HomeModel *homeModel;
@end

@implementation HomeViewController

- (HomeModel *)homeModel
{
    if (!_homeModel)
    {
        _homeModel = [[HomeModel alloc] init];
    }
    
    return _homeModel;
}

- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc] init];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
}


- (void)requestHomeData
{
    
    __weak typeof(self) wself = self;
    
    [self.homeModel dataRequestWithCount:@"20"
                                  cursor:@"0"
                                relative:@"after"
                                    type:@"top_day"
                               dataBlock:^(NSInteger requestStatus) {
                                   if (requestStatus == 200)
                                   {
                                       [wself.tableView reloadData];
                                   }
                               }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[HomeCell class] forCellReuseIdentifier:@"HomeCell"];
    [self.view addSubview:self.tableView];
    
    [self requestHomeData];
}

- (void)viewWillLayoutSubviews
{
    __weak typeof(self)  wself = self;
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(wself.view);
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark  TableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeCell" forIndexPath:indexPath];
    NSDictionary *model = [self.homeModel.rows objectAtIndex:indexPath.row];
    NSString *url = [[[model objectForKey:@"video"] objectForKey:@"thumbnail"] firstObject];
    [cell.videoImageView sd_setImageWithURL:[NSURL URLWithString:url]];
    return cell;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.homeModel.rows count];
}


#pragma  mark TableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 210;
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
