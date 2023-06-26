//
//  MyViewController.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/26.
//

#import "MyViewController.h"
#import "SecondDemoViewController.h"

@interface MyViewController ()

@property (nonatomic,strong) UIButton *dataCenterButton;

@property (nonatomic,strong) UIButton *offLineButton;

@property (nonatomic,strong) UIButton *finishPageButton;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupSubviews];
}

- (void)setupSubviews {
    
    self.dataCenterButton = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 50, 100, 100, 30)];
    [self.dataCenterButton setTitle:@"数据中心" forState:normal];
    [self.dataCenterButton setTitleColor:[UIColor blackColor] forState:normal];
    [self.dataCenterButton addTarget:self action:@selector(enterDataCenter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.dataCenterButton];
    
    self.offLineButton = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 50, 150, 100, 30)];
    [self.offLineButton setTitle:@"离线记录" forState:normal];
    [self.offLineButton setTitleColor:[UIColor blackColor] forState:normal];
    [self.offLineButton addTarget:self action:@selector(enterOfflineCenter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.offLineButton];
    
    self.finishPageButton = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 50, 200, 100, 30)];
    [self.finishPageButton setTitle:@"完成页" forState:normal];
    [self.finishPageButton setTitleColor:[UIColor blackColor] forState:normal];
    [self.finishPageButton addTarget:self action:@selector(enterFinishPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.finishPageButton];
    
}

- (void)enterDataCenter {
    SecondDemoViewController *vc = [[SecondDemoViewController alloc] initWithSourceType:SourceTypeDataCenter];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)enterOfflineCenter {
    SecondDemoViewController *vc = [[SecondDemoViewController alloc] initWithSourceType:SourceTypeOffLine];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)enterFinishPage {
    SecondDemoViewController *vc = [[SecondDemoViewController alloc] initWithSourceType:SourceTypeFinishPage];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
