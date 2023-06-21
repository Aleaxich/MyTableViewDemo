//
//  MyViewModel.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import <Foundation/Foundation.h>
#import "MyModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyViewModel : NSObject


- (NSArray<MyModel *> *)featchData;

@end

NS_ASSUME_NONNULL_END
