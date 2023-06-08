//
//  MyTableViewAdapter.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <Foundation/Foundation.h>
#import "MyBaseCellsAdapter.h"
@class MyModel;

@import UIKit;

NS_ASSUME_NONNULL_BEGIN


@interface MyTableViewAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,copy) NSArray<MyBaseCellsAdapter *> *adapterList;

@property (nonatomic,copy) void(^deleteIndex)(NSInteger index);

@property (nonatomic,copy) void(^reload)(void);

- (instancetype)initWithTableView:(UITableView *)tableView;

- (void)loadData:(NSArray<MyModel *> *)models withAdapters:(NSArray<MyBaseCellsAdapter *> *)adapters;


@end

NS_ASSUME_NONNULL_END
