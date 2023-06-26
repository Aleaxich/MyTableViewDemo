//
//  FirstCardTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/19.
//

#import "FirstCardTableViewCell.h"


@interface FirstCardTableViewCell()

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UIButton *tapButton;


@end

@implementation FirstCardTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self buildSubviews];
    }
    return self;
}

- (void)buildSubviews {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 200, 30)];
    [self.contentView addSubview:self.label];
    _tapButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _tapButton.frame = CGRectMake(240, 10, 40, 40);
    [_tapButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_tapButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:self.tapButton];
}

- (void)loadData:(MyModel *)model {
    TypeOneModel *oneModel = (TypeOneModel *)model;
    self.label.text = oneModel.title;
}

- (void)click {
    NSLog(@"按钮被点击了!!");
}

@end
