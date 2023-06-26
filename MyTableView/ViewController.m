//
//  ViewController.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import "ViewController.h"
#import "SecondDemoViewController.h"
#import "FirstDemoViewController.h"
#import "MyViewController.h"


@interface ViewController ()

@property (nonatomic, strong) UIButton *demo1Button;

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

}

- (void)setupSubviews{
    [self.view addSubview:self.demo1Button];
    [self.view addSubview:self.demo2Button];
}

- (UIButton *)demo1Button {
    if (!_demo1Button) {
        _demo1Button = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width / 2) - 50, 300, 100, 30)];
        [_demo1Button addTarget:self action:@selector(showDemo1) forControlEvents:UIControlEventTouchUpInside];
        [_demo1Button setTitle:@"旧方案" forState:normal];
        [_demo1Button setTitleColor:[UIColor blackColor] forState:normal];
    }
    return _demo1Button;
}


- (UIButton *)demo2Button {
    if (!_demo2Button) {
        _demo2Button = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width / 2) - 50, 500, 100, 30)];
        [_demo2Button addTarget:self action:@selector(showDemo2) forControlEvents:UIControlEventTouchUpInside];
        [_demo2Button setTitle:@"新方案" forState:normal];
        [_demo2Button setTitleColor:[UIColor blackColor] forState:normal];
    }
    return _demo2Button;
}

- (void)showDemo1 {
    FirstDemoViewController *vc = [[FirstDemoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)showDemo2 {
    MyViewController *vc = [[MyViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}




@end
