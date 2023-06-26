//
//  MyHeaderTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/7.
//

#import "MyHeaderTableViewCell.h"

@implementation MyHeaderTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle: style reuseIdentifier:reuseIdentifier]) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews {
    self.contentView.backgroundColor = [UIColor clearColor];
    UIBezierPath*maskPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20) byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(8,8)];
    CAShapeLayer*maskLayer = [[CAShapeLayer alloc]init];
    maskLayer.frame= self.contentView.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask= maskLayer;

}

- (void)buildFinishPageSubviews {
    self.contentView.backgroundColor = [UIColor blackColor];
}


#pragma mark -- MyCellProtocol

- (Class)classType {
    return self.class;
}

- (CGFloat)cellHeight {
    return 20;
}


@end
