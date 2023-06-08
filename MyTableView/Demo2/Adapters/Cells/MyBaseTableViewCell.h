//
//  MyBaseTableViewCell.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/8.
//

#import <UIKit/UIKit.h>
#import "MyCellProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyBaseTableViewCell : UITableViewCell<MyCellProtocol>

- (void)buildSubviews;

@end

NS_ASSUME_NONNULL_END
