//
//  TrainingDataTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/26.
//

#import "TrainingDataTableViewCell.h"
#import "MyModel.h"

@interface  TrainingDataTableViewCell()

@property (nonatomic,strong) UILabel *distanceLabel;

@property (nonatomic,strong) UILabel *speedLabel;

@property (nonatomic,strong) UILabel *descLabel;


@end

@implementation TrainingDataTableViewCell

- (void)buildSubviews {
    
    _distanceLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 300, 30)];
    [_distanceLabel setFont:[UIFont boldSystemFontOfSize:25]];
    [self.contentView addSubview:self.distanceLabel];
    
    self.speedLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 30, 200, 30)];
    [self.speedLabel setFont:[UIFont fontWithName:@" AmericanTypewriter-Bold" size:18]];
    _speedLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.speedLabel];
    
    self.descLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 30, 200, 30)];
    [self.descLabel setFont:[UIFont fontWithName:@" AmericanTypewriter-Bold" size:18]];
    self.descLabel.textColor = [UIColor grayColor];
    self.descLabel.text = @"硬件数据展示";
    [self.contentView addSubview:self.descLabel];
    
}

- (void)buildFinishPageSubviews {
    self.contentView.backgroundColor = [UIColor blackColor];
    self.distanceLabel.textColor = [UIColor whiteColor];
    self.speedLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];


}

#pragma mark -- <MyCellProtocol>


- (Class)classType {
    return self.class;
}

- (void)loadData:(TypeFourModel *)model {
    [super loadData:model];
    self.distanceLabel.text = [NSString stringWithFormat:@"距离：%ld 公里",model.distance];
    self.speedLabel.text = [NSString stringWithFormat:@"速度：%ld km/h",model.speed];
}

- (CGFloat)cellHeight {
    return 50;
}



@end
