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
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self buildSubviews];
    }
    return self;
}

- (void)buildSubviews {
    
}

- (void)buildFinishPageSubviews {
    
}

#pragma mark -- <MyCellProtocol>

- (Class)classType {
    return self.class;
}

- (void)loadData:(MyModel *)model {
    if ([model.style isEqualToString:@"finishPage"]) {
        [self buildFinishPageSubviews];
    }
}

- (CGFloat)cellHeight {
    return 0;
}

@end
