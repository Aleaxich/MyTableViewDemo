//
//  FirstDemoViewController.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/19.
//

#import "FirstDemoViewController.h"
#import "MyTableViewDataSource.h"
#import "MyViewModel.h"

@interface FirstDemoViewController ()

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) MyTableViewDataSource *dataSource;

@property (nonatomic,strong) MyViewModel *viewModel;

@end

@implementation FirstDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubviews];
    _viewModel = [[MyViewModel alloc] init];
    self.dataSource = [[MyTableViewDataSource alloc] initWithTableView:self.tableView andDatas:[self.viewModel featchData]];
    
}

- (void)setupSubviews {
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
        _tableView.backgroundColor = [UIColor grayColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.showsVerticalScrollIndicator = NO;
    }
    return _tableView;
}



@end
