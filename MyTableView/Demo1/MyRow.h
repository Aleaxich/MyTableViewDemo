//
//  MyRow.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^clickAction)(void);

@interface MyRow : NSObject

/// 点击
@property (nonatomic, copy) clickAction action;

@end

NS_ASSUME_NONNULL_END
