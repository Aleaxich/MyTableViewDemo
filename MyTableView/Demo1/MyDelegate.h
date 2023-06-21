//
//  MyDelegate.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/19.
//

#import <Foundation/Foundation.h>
#import "MySection.h"
#import "MyRow.h"
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface MyDelegate : NSObject<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,copy) NSArray<MySection *> *sections;

@end

NS_ASSUME_NONNULL_END
