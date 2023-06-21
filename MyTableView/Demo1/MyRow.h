//
//  MyRow.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

typedef void(^clickAction)(void);
typedef UITableViewCell *_Nonnull(^createCell)(void);

@interface MyRow : NSObject

/// 点击
@property (nonatomic, copy) clickAction clickAction;

@property (nonatomic, copy) createCell createCell;

@property (nonatomic, assign) CGFloat rowHeight;

@end

NS_ASSUME_NONNULL_END
