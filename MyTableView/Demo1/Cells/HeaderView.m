//
//  HeaderView.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/20.
//

#import "HeaderView.h"


@implementation HeaderView

-(instancetype)defaultHeaderView {
    if (self == [super initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)]) {
        [self setupSubviews];
    }
    return self;
}



- (void)setupSubviews {
    self.backgroundColor = [UIColor whiteColor];
    UIBezierPath*maskPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20) byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(8,8)];
    CAShapeLayer*maskLayer = [[CAShapeLayer alloc]init];
    maskLayer.frame = CGRectMake(0, 10, [UIScreen mainScreen].bounds.size.width, 20);
    maskLayer.path = maskPath.CGPath;
    self.layer.mask= maskLayer;

}

-(CGFloat)defaultHeaderHeight {
    return 30;
}

@end
