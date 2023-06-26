//
//  MyAdapterViewModel.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class MyBaseCellsAdapter;
@class MyModel;

/// 不同数据来源
typedef NS_ENUM(NSInteger,SourceType) {
    SourceTypeOffLine,
    SourceTypeDataCenter,
    SourceTypeFinishPage
};

NS_ASSUME_NONNULL_BEGIN

@interface MyAdapterViewModel : NSObject

/// 网络数据
@property (nonatomic,copy) NSArray<MyModel *> *datas;

@property (nonatomic,copy) NSArray <MyBaseCellsAdapter *> *adapters;

@property (nonatomic,copy) void(^uploadSuccess)(void);

- (instancetype)initWithType:(SourceType)type;

- (void)featchDeviceData;

- (void)featchData;

- (void)deleteAdapterAtIndex:(NSInteger) index;

- (void)reload;

@end

NS_ASSUME_NONNULL_END
