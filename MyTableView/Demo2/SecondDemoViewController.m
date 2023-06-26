//
//  SecondDemoViewController.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "SecondDemoViewController.h"
#import "MyTableViewAdapter.h"

@interface SecondDemoViewController ()

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic, strong) MyAdapterViewModel *viewModel;

@property (nonatomic, strong) MyTableViewAdapter *tableViewAdapter;
/// 页面来源
@property (nonatomic, assign) SourceType pageSourceType;

@end

@implementation SecondDemoViewController

- (instancetype)initWithSourceType:(SourceType)type {
    if (self = [super init]) {
        self.pageSourceType = type;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubview];

    // 模拟请求网络数据
    [self featchData];
    [self.tableViewAdapter loadData:self.viewModel.datas withAdapters:self.viewModel.adapters];
    
}

- (void)featchData {
    switch (self.pageSourceType) {
        case SourceTypeOffLine: {
            [self.viewModel featchDeviceData];
        }
            break;
        case SourceTypeDataCenter: {
            [self.viewModel featchData];
        }
            break;
        case SourceTypeFinishPage: {
            [self.viewModel featchDeviceData];
        }
        default:
            break;
    }
}

- (void)setupSubview {
    [self.view addSubview:self.tableView];
    self.tableViewAdapter = [[MyTableViewAdapter alloc] initWithTableView:self.tableView];
    __weak typeof (self) wSelf = self;
    self.tableViewAdapter.deleteIndex = ^(NSInteger index) {
        __strong typeof (wSelf) sSelf = wSelf;
        [sSelf.viewModel deleteAdapterAtIndex:index];
        /// TODO: 优化
        [sSelf.tableViewAdapter loadData:sSelf.viewModel.datas withAdapters:sSelf.viewModel.adapters];
    };
    self.tableViewAdapter.reload = ^{
        __strong typeof (wSelf) sSelf = wSelf;
        [sSelf.viewModel reload];
        [sSelf.tableViewAdapter loadData:sSelf.viewModel.datas withAdapters:sSelf.viewModel.adapters];
    };
    self.tableView.delegate = self.tableViewAdapter;
    self.tableView.dataSource = self.tableViewAdapter;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor grayColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.showsVerticalScrollIndicator = NO;
    }
    return _tableView;
}

- (MyAdapterViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[MyAdapterViewModel alloc] initWithType:self.pageSourceType];
        __weak typeof (self) wSelf = self;
        _viewModel.uploadSuccess = ^{
            __strong typeof (wSelf) sSelf = wSelf;
            [sSelf.tableViewAdapter loadData:sSelf.viewModel.datas withAdapters:sSelf.viewModel.adapters];
        };
    }
    return _viewModel;
}

@end
