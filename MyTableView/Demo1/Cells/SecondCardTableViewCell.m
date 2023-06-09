//
//  SecondCardTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/19.
//

#import "SecondCardTableViewCell.h"

@interface SecondCardTableViewCell()

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UILabel *subTitleLabel;

@end

@implementation SecondCardTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self buildSubviews];
    }
    return self;
}

- (void)buildSubviews {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 300, 30)];
    [_label setFont:[UIFont boldSystemFontOfSize:25]];
    [self.contentView addSubview:self.label];
    
    _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 30, 200, 30)];
    [_subTitleLabel setFont:[UIFont fontWithName:@" AmericanTypewriter-Bold" size:18]];
    _subTitleLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.subTitleLabel];
}

- (void)loadData:(MyModel *)model {
    TypeTwoModel *twoModel = (TypeTwoModel *)model;
    self.label.text = twoModel.title;
    self.subTitleLabel.text = twoModel.subTitle;
}

@end
