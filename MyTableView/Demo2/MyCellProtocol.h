//
//  MyCellProtocol.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <UIKit/UIKit.h>
#import "MyModel.h"



@protocol  MyCellProtocol <NSObject>

- (CGFloat)cellHeight;

- (Class)classType;


@optional

@property(nonatomic,copy) void(^refreshAction)(void);

@property(nonatomic,copy) void(^deleteAction)(void);

/// 加载数据
-(void)loadData:(MyModel *)model;

/// 点击
- (void)clickAction;

/// 刷新
- (void)refreshTableView;

/// 默认高度
- (CGFloat)defaultHeight;

@end


