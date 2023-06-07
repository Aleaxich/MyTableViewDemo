//
//  SecondTypeAdapter.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/7.
//

#import "SecondTypeAdapter.h"
#import "SecondTypeTableViewCell.h"

@implementation SecondTypeAdapter

- (void)buildCells {
    self.footerHeight = 5;
    NSMutableArray *array = @[].mutableCopy;
    MyHeaderTableViewCell *header = [[MyHeaderTableViewCell alloc] init];
    [array addObject:header];
    [array addObject:[[SecondTypeTableViewCell alloc] init]];
    [array addObject:[[MyFooterTableViewCell alloc] init]];
    self.cells = array.copy;
}

@end
