//
//  MyAdapterBuilder.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "MyAdapterBuilder.h"
#import "MyBaseCellsAdapter.h"
#import "MyModel.h"
#import "FirstTypeAdapter.h"
#import "SecondTypeAdapter.h"
#import "ThirdTypeAdapter.h"
#import "TrainingDataAdapter.h"

@implementation MyAdapterBuilder

- (instancetype)initWithTableView:(UITableView *)tableView {
    if (self = [super init]) {
        self.tableView = tableView;
    }
    return self;
}

+(NSArray<MyBaseCellsAdapter *> *)buildAdapters:(NSArray<MyModel *> *)models {
    NSMutableArray *mutableArray = @[].mutableCopy;
    for (MyModel *model in models) {
        if ([model.type isEqual: CardTypeOne]) {
            FirstTypeAdapter *adapter = [[FirstTypeAdapter alloc] init];
            [mutableArray addObject:adapter];
        } else if ([model.type isEqual: CardTypeTwo]) {
            SecondTypeAdapter *adapter = [[SecondTypeAdapter alloc] init];
            [mutableArray addObject:adapter];
        } else if ([model.type isEqual: CardTypeThree]) {
            ThirdTypeAdapter *adapter = [[ThirdTypeAdapter alloc] init];
            [mutableArray addObject:adapter];
        } else if ([model.type isEqual: CardTypeFour]) {
            TrainingDataAdapter *adapter = [[TrainingDataAdapter alloc] init];
            [mutableArray addObject:adapter];
        }
    }
    return mutableArray.copy;
}

@end
