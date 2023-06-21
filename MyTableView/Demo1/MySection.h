//
//  MySection.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/5.
//

#import <Foundation/Foundation.h>
#import "MyRow.h"
#import "MyModel.h"
#import "HeaderView.h"

NS_ASSUME_NONNULL_BEGIN

typedef HeaderView *_Nonnull(^createHeader)(void);

typedef MyRow * _Nonnull (^createRow)(void);


@interface MySection : NSObject

@property (nonatomic, copy) createHeader createHeader;

@property (nonatomic, assign) CGFloat headerHeight;

@property (nonatomic,copy) createRow createRow;

- (void)loadData:(MyModel *)model;

@end

NS_ASSUME_NONNULL_END
