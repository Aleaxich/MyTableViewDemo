//
//  ThirdCardTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/19.
//

#import "ThirdCardTableViewCell.h"

@interface ThirdCardTableViewCell ()

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UIImageView *pictureView;

@end

@implementation ThirdCardTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self buildSubviews];
    }
    return self;
}

- (void)buildSubviews {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(130, 5, 200, 30)];
    [_label setFont:[UIFont boldSystemFontOfSize:15]];
    [self.contentView addSubview:self.label];
    
    self.pictureView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 5, 10, 10)];
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    self.pictureView.layer.cornerRadius = 8;
    self.pictureView.layer.masksToBounds = YES;
    [self.contentView addSubview:self.pictureView];
}

- (void)loadData:(MyModel *)model {
    TypeThreeModel *threeModel = (TypeThreeModel *)model;
    self.label.text = threeModel.title;
    self.imageView.image = [UIImage imageNamed:threeModel.imageName];
}



@end
