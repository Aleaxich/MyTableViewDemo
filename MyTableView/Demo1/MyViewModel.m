//
//  MyViewModel.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import "MyViewModel.h"

@implementation MyViewModel



- (NSArray<MyModel *> *)featchData {
    NSMutableArray *array = @[].mutableCopy;
  
    for (int i = 1;i < 10;i++) {
        [self getData:array andIndex:i];
    }
    return array;
}

- (void)getData:(NSMutableArray *)array andIndex:(NSInteger)index{
    TypeOneModel *modelOne = [[TypeOneModel alloc] init];
    modelOne.type = @"type1";
    modelOne.title = [NSString stringWithFormat:@"第一种类型,第%ld次添加",(long)index];
    [array addObject:modelOne];
    
    TypeTwoModel *modelTwo = [[TypeTwoModel alloc] init];
    modelTwo.type = @"type2";
    modelTwo.title = [NSString stringWithFormat:@"第二种类型,第%ld次添加",(long)index];
    modelTwo.subTitle = @"第二种类型的副标题";
    [array addObject:modelTwo];
    
    TypeThreeModel *modelThree = [[TypeThreeModel alloc] init];
    modelThree.type = @"type3";
    modelThree.title = [NSString stringWithFormat:@"第三种类型,第%ld次添加",(long)index];
    modelThree.imageName = @"icon_flower";
    [array addObject:modelThree];
}

@end
