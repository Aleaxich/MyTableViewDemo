//
//  MyBaseCellsAdapter.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "MyBaseCellsAdapter.h"

@implementation MyBaseCellsAdapter

-(instancetype)init {
    if (self = [super init]) {
        [self buildCells];
    }
    return self;
}

- (CGFloat)footerHeight {
    return 5;
}

// 子类实现
- (void)buildCells {
    
}

@end
