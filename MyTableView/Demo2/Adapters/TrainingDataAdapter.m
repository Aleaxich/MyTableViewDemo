//
//  TrainingDataAdapter.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/26.
//

#import "TrainingDataAdapter.h"
#import "TrainingDataTableViewCell.h"

@implementation TrainingDataAdapter

- (void)buildCells {
    NSMutableArray *array = @[].mutableCopy;
    [array addObject:[[MyHeaderTableViewCell alloc] init]];
    [array addObject:[[TrainingDataTableViewCell alloc] init]];
    [array addObject:[[MyFooterTableViewCell alloc] init]];
    self.cells = array.copy;
}

@end
