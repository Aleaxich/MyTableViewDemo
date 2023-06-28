//
//  MyTableViewDataSource.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import "MyTableViewDataSource.h"
#import "FirstCardTableViewCell.h"
#import "SecondCardTableViewCell.h"
#import "ThirdCardTableViewCell.h"
#import "HeaderView.h"
#import "MyDelegate.h"



@interface MyTableViewDataSource()

@property (nonatomic,copy) NSArray<MyModel *> *datas;

@property (nonatomic,strong) MyDelegate *delegate;

@end

@implementation MyTableViewDataSource

-(instancetype)initWithTableView:(UITableView *)tableView andDatas:(NSArray<MyModel *> *)datas {
    if (self = [super init]) {
        self.tableview = tableView;
        self.datas = datas;
        self.delegate = [[MyDelegate alloc] init];
        self.tableview.delegate = self.delegate;
        self.tableview.dataSource = self.delegate;
        [self setupSections];
    }
    return self;
}

- (void)setupSections {
    [self registerCells];
    self.sections = @[].mutableCopy;
    for (MyModel *model in self.datas) {
        if ([model.type isEqual: CardTypeOne]) {
            [self.sections addObject:[self createTypeOneSection:model]];
        } else if ([model.type isEqual: CardTypeTwo]) {
            [self.sections addObject:[self createTypeTwoSection:model]];
        } else if ([model.type isEqual: CardTypeThree]) {
            [self.sections addObject:[self createTypeThreeSection:model]];
        }
    }
    self.delegate.sections = self.sections;
    [self.tableview reloadData];
}

- (void)registerCells {
    [self.tableview registerClass:[FirstCardTableViewCell class] forCellReuseIdentifier:NSStringFromClass([FirstCardTableViewCell class])];
    [self.tableview registerClass:[SecondCardTableViewCell class] forCellReuseIdentifier:NSStringFromClass([SecondCardTableViewCell class])];
    [self.tableview registerClass:[ThirdCardTableViewCell class] forCellReuseIdentifier:NSStringFromClass([ThirdCardTableViewCell class])];
}

- (MySection *)createTypeOneSection:(MyModel *)model {
    MySection *section = [[MySection alloc] init];
    section.createHeader = ^HeaderView * _Nonnull{
        return [[HeaderView alloc] defaultHeaderView];
    };
    section.createRow = ^MyRow * _Nonnull{
        MyRow *row = [[MyRow alloc] init];
        row.rowHeight = 50;
        row.createCell = ^UITableViewCell * _Nonnull{
            FirstCardTableViewCell *cell = [[FirstCardTableViewCell alloc] init];
            [cell loadData:model];
            return cell;
        };
        row.clickAction = ^{
            NSLog(@"卡片被点击了");
        };
        return row;
    };
    return section;
}

- (MySection *)createTypeTwoSection:(MyModel *)model {
    MySection *section = [[MySection alloc] init];
    section.createHeader = ^HeaderView * _Nonnull{
        return [[HeaderView alloc] defaultHeaderView];
    };
    section.createRow = ^MyRow * _Nonnull{
        MyRow *row = [[MyRow alloc] init];
        row.rowHeight = 70;
        row.createCell = ^UITableViewCell * _Nonnull{
            SecondCardTableViewCell *cell = [[SecondCardTableViewCell alloc] init];
            [cell loadData:model];
            return cell;
        };
        return row;
    };
    return section;
}

- (MySection *)createTypeThreeSection:(MyModel *)model {
    MySection *section = [[MySection alloc] init];
    section.createHeader = ^HeaderView * _Nonnull{
        return [[HeaderView alloc] defaultHeaderView];
    };
    section.createRow = ^MyRow * _Nonnull{
        MyRow *row = [[MyRow alloc] init];
        row.rowHeight = 50;
        row.createCell = ^UITableViewCell * _Nonnull{
            ThirdCardTableViewCell *cell = [[ThirdCardTableViewCell alloc] init];
            [cell loadData:model];
            return cell;
        };
        return row;
    };
    return section;
}



@end
