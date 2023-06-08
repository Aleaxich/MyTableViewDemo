//
//  MyBaseTableViewCell.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/8.
//

#import "MyBaseTableViewCell.h"

@implementation MyBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle: style reuseIdentifier:reuseIdentifier]) {
        [self buildSubviews];
    }
    return self;
}

- (void)buildSubviews {
    
}

#pragma mark -- <MyCellProtocol>

- (Class)classType {
    return self.class;
}

- (void)loadData:(MyModel *)model {
    if ([model.style isEqualToString:@"purple"]) {
        self.contentView.backgroundColor = [UIColor purpleColor];
    } else if ([model.style isEqualToString:@"blue"]) {
        self.contentView.backgroundColor = [UIColor blueColor];
    } else {
        self.contentView.backgroundColor = [UIColor whiteColor];

    }
}

- (CGFloat)cellHeight {
    return 0;
}

@end
