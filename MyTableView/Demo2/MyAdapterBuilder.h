//
//  MyAdapterBuilder.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class MyBaseCellsAdapter;
@class MyModel;

NS_ASSUME_NONNULL_BEGIN

@interface MyAdapterBuilder : NSObject

@property (nonatomic,weak) UITableView *tableView;

- (instancetype)initWithTableView:(UITableView *)tableView;

+(NSArray<MyBaseCellsAdapter *> *)buildAdapters:(NSArray<MyModel *> *)models;


@end

NS_ASSUME_NONNULL_END
