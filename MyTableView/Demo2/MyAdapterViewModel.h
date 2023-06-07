//
//  MyAdapterViewModel.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class MyBaseCellsAdapter;
@class MyModel;

NS_ASSUME_NONNULL_BEGIN

@interface MyAdapterViewModel : NSObject

/// 网络数据
@property (nonatomic,copy) NSArray<MyModel *> *datas;

@property (nonatomic,copy) NSArray <MyBaseCellsAdapter *> *adapters;

- (void)setAssociatedTableView:(UITableView *)tableview;

-(void)featchData;

@end

NS_ASSUME_NONNULL_END
