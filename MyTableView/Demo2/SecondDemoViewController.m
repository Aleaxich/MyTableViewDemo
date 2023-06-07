//
//  SecondDemoViewController.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "SecondDemoViewController.h"
#import "MyAdapterViewModel.h"
#import "MyTableViewAdapter.h"

@interface SecondDemoViewController ()

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic, strong) MyAdapterViewModel *viewModel;

@property (nonatomic, strong) MyTableViewAdapter *tableViewAdapter;

@end

@implementation SecondDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubview];

    // 模拟请求网络数据
    [self.viewModel featchData];
    self.tableViewAdapter.adapterList = self.viewModel.adapters;
    [self.tableViewAdapter loadData:self.viewModel.datas];
    
}

- (void)setupSubview {
    [self.view addSubview:self.tableView];
    self.tableViewAdapter = [[MyTableViewAdapter alloc] initWithTableView:self.tableView];
    self.tableView.delegate = self.tableViewAdapter;
    self.tableView.dataSource = self.tableViewAdapter;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor grayColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

- (MyAdapterViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[MyAdapterViewModel alloc] init];
    }
    return _viewModel;
}

@end
