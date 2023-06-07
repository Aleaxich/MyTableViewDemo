//
//  ViewController.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import "ViewController.h"
#import "MyTableViewDataSource.h"
#import "SecondDemoViewController.h"


@interface ViewController ()

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) MyTableViewDataSource *datasource;

@property (nonatomic, strong) UIButton *demo2Button;

@end

@implementation ViewController

- (instancetype)init {
    if (self = [super init]) {
        [self setupSubviews];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    self.datasource = [[MyTableViewDataSource alloc] initWithTableView:self.tableView];
//    [self.view addSubview:self.tableView];
}

- (void)setupSubviews{
    [self.view addSubview:self.demo2Button];
}


- (UIButton *)demo2Button {
    if (!_demo2Button) {
        _demo2Button = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width / 2) - 50, 500, 100, 30)];
        [_demo2Button addTarget:self action:@selector(showDemo2) forControlEvents:UIControlEventTouchUpInside];
        [_demo2Button setTitle:@"demo2" forState:normal];
        [_demo2Button setTitleColor:[UIColor blackColor] forState:normal];
    }
    return _demo2Button;
}


- (void)showDemo2 {
    SecondDemoViewController *vc = [[SecondDemoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
    }
    return  _tableView;
}


@end
