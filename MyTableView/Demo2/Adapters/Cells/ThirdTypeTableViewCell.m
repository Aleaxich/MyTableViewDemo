//
//  ThirdTypeTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/7.
//

#import "ThirdTypeTableViewCell.h"
#import "MyModel.h"

@interface ThirdTypeTableViewCell ()

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UIImageView *pictureView;

@end

@implementation ThirdTypeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle: style reuseIdentifier:reuseIdentifier]) {
        [self buildSubviews];
    }
    return self;
}

- (void)buildSubviews {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(230, 5, 200, 30)];
    [_label setFont:[UIFont boldSystemFontOfSize:25]];
    [self.contentView addSubview:self.label];
    
    self.pictureView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 5, 10, 10)];
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    self.pictureView.layer.cornerRadius = 8;
    self.pictureView.layer.masksToBounds = YES;
    [self.contentView addSubview:self.pictureView];

}

#pragma mark -- <MyCellProtocol>


- (Class)classType {
    return self.class;
}

- (void)loadData:(TypeThreeModel *)model {
    self.label.text = model.title;
    self.imageView.image = [UIImage imageNamed:model.imageName];
}

- (CGFloat)cellHeight {
    return 50;
}



@end
