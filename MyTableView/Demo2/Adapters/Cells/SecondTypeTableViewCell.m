//
//  SecondTypeTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/7.
//

#import "SecondTypeTableViewCell.h"
#import "MyModel.h"


@interface SecondTypeTableViewCell()

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UILabel *subTitleLabel;

@property (nonatomic,strong) UIButton *deleteButton;

@end

@implementation SecondTypeTableViewCell

- (void)buildSubviews {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 300, 30)];
    [_label setFont:[UIFont boldSystemFontOfSize:25]];
    [self.contentView addSubview:self.label];
    
    _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 30, 200, 30)];
    [_subTitleLabel setFont:[UIFont fontWithName:@" AmericanTypewriter-Bold" size:18]];
    _subTitleLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.subTitleLabel];
    
    _deleteButton = [UIButton buttonWithType:UIButtonTypeClose];
    _deleteButton.frame = CGRectMake(300, 30, 20, 20);
    [_deleteButton addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:self.deleteButton];
}

- (void)buildFinishPageSubviews {
    self.contentView.backgroundColor = [UIColor blackColor];
    self.label.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
}

- (void)close {
    if (self.deleteAction) {
        self.deleteAction();
    }
}

#pragma mark -- <MyCellProtocol>

@synthesize deleteAction = _deleteAction;

- (Class)classType {
    return self.class;
}

- (void)loadData:(TypeTwoModel *)model {
    [super loadData:model];
    self.label.text = model.title;
    self.subTitleLabel.text = model.subTitle;
}

- (CGFloat)cellHeight {
    return 70;
}

@end
