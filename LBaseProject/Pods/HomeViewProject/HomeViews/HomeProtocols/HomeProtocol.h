//
//  HomeProtocol.h
//  HomeDemo
//
//  Created by jinlong9 on 16/9/29.
//  Copyright © 2016年 losehero. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^HomeDataBlock)(NSInteger requestStatus);

@protocol HomeViewControllerProtocol <NSObject>

@end


@protocol HomeModelProtocol <NSObject>
@property (nonatomic,strong) NSMutableArray *rows;
- (void)dataRequestWithCount:(NSString *)count cursor:(NSString *)cursor relative:(NSString *)relative type:(NSString *)type dataBlock:(HomeDataBlock)resultBlock;
@end
