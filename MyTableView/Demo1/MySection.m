//
//  MySection.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import "MySection.h"

@interface MySection()

@property (nonatomic,strong) MyModel *model;

@end

@implementation MySection

- (void)loadData:(MyModel *)model {
    self.model = model;
}

@end
