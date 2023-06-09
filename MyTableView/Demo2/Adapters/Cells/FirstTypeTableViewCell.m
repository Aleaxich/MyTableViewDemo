//
//  FirstTypeTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/7.
//

#import "FirstTypeTableViewCell.h"
#import "MyModel.h"

@interface FirstTypeTableViewCell ()

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UIButton *button;

@end

@implementation FirstTypeTableViewCell


- (void)buildSubviews {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 30)];
    [self.contentView addSubview:self.label];
    
    _button = [[UIButton alloc] initWithFrame:CGRectMake(200, 20, 150, 30)];
    [_button setBackgroundColor: [UIColor brownColor]];
    [_button setTitle:@"网络请求" forState:normal];
    [_button setTitleColor:[UIColor blackColor] forState:normal];
    [_button addTarget:self action:@selector(refreshTableView) forControlEvents:UIControlEventTouchUpInside];
    _button.layer.cornerRadius = 8;
    _button.layer.masksToBounds = YES;
    [self.contentView addSubview:self.button];
}

- (void)buildFinishPageSubviews {
    self.contentView.backgroundColor = [UIColor blackColor];
    self.label.textColor = [UIColor whiteColor];
    [self.button setBackgroundColor:[UIColor blueColor]];
}

#pragma mark -- <MyCellProtocol>

@synthesize refreshAction = _refreshAction;

- (Class)classType {
    return self.class;
}

- (void)refreshTableView {
    NSLog(@"刷新列表");
    if (self.refreshAction) {
        self.refreshAction();
    }
}

- (void)loadData:(TypeOneModel *)model {
    [super loadData:model];
    self.label.text = model.title;
}

- (CGFloat)cellHeight {
    return 50;
}

@end
