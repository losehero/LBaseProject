//
//  HomeCell.m
//  HomeDemo
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import "HomeCell.h"
#import <Masonry/Masonry.h>
@interface HomeCell()

@end


@implementation HomeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.videoImageView = [[UIImageView alloc] init];
        self.videoImageView.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:self.videoImageView];
    }
    
    return self;
}



-(void)layoutSubviews
{
    [super layoutSubviews];
    
    __weak typeof(self) wself = self;
    [self.videoImageView mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.edges.equalTo(wself);
        
    }];
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
