//
//  FirstTypeAdapter.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/7.
//

#import "FirstTypeAdapter.h"
#import "FirstTypeTableViewCell.h"



@implementation FirstTypeAdapter

- (void)buildCells {
    NSMutableArray *array = @[].mutableCopy;
    [array addObject:[[MyHeaderTableViewCell alloc] init]];
    [array addObject:[[FirstTypeTableViewCell alloc] init]];
    [array addObject:[[MyFooterTableViewCell alloc] init]];
    self.cells = array.copy;
}

@end
