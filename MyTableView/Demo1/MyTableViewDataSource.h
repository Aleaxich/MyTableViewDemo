//
//  MyTableViewDataSource.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import <Foundation/Foundation.h>
#import "MySection.h"
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewDataSource : NSObject

/// 持有 tableview
@property (nonatomic,weak) UITableView *tableview;

/// 数据
@property (nonatomic,strong) NSMutableArray<MySection *> *sections;

-(instancetype)initWithTableView:(UITableView *)tableView andDatas:(NSArray<MyModel *> *)datas;

@end

NS_ASSUME_NONNULL_END
