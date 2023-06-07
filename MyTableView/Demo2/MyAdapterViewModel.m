//
//  MyAdapterViewModel.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "MyAdapterViewModel.h"
#import "MyModel.h"
#import "MyBaseCellsAdapter.h"
#import "MyAdapterBuilder.h"

@interface MyAdapterViewModel()


@end

@implementation MyAdapterViewModel

- (void)featchData {
    NSMutableArray *array = @[].mutableCopy;
    TypeOneModel *modelOne = [[TypeOneModel alloc] init];
    modelOne.type = @"type1";
    modelOne.title = @"第一种类型";
    [array addObject:modelOne];
    
    TypeTwoModel *modelTwo = [[TypeTwoModel alloc] init];
    modelTwo.type = @"type2";
    modelTwo.title = @"第二种类型";
    modelTwo.subTitle = @"第二种类型的副标题";
    [array addObject:modelTwo];
    
    TypeThreeModel *modelThree = [[TypeThreeModel alloc] init];
    modelThree.type = @"type3";
    modelThree.title = @"第三种类型";
    modelThree.imageName = @"icon_flower";
    [array addObject:modelThree];

    self.datas = array.copy;
    [self buildAdapters];
}

- (void)setAssociatedTableView:(UITableView *)tableview {
    
}

- (void)buildAdapters {
    self.adapters = [MyAdapterBuilder buildAdapters:self.datas];
}


@end
