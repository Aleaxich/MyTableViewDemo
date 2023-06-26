//
//  MyAdapterViewModel.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "MyAdapterViewModel.h"
#import "MyModel.h"
#import "MyBaseCellsAdapter.h"
#import "MyAdapterBuilder.h"

@interface MyAdapterViewModel()

@property (nonatomic,assign) SourceType type;

@end

@implementation MyAdapterViewModel

- (instancetype)initWithType:(SourceType)type {
    if (self == [super init]) {
        self.type = type;
    }
    return self;
}

- (void)featchDeviceData {
    DeviceDataModel *model = [[DeviceDataModel alloc] init];
    model.speed = 30;
    model.distance = 5;
    NSMutableArray *array = @[].mutableCopy;
    [array addObject:[self changeDeviceDataToMyModel:model]];
    self.datas = [self changeModelWithType:array].copy;
    [self buildAdapters];
    if (self.type == SourceTypeFinishPage) {
        [self uploadDatas];
    }
}

// 将硬件数据模型转换为标准模型
- (TypeFourModel *)changeDeviceDataToMyModel:(DeviceDataModel *)model {
    TypeFourModel *myModel = [[TypeFourModel alloc] init];
    myModel.distance = model.distance;
    myModel.speed = model.speed;
    myModel.type = @"type4";
    return myModel;
}

- (void)featchData {
    NSMutableArray *array = @[].mutableCopy;
    TypeOneModel *modelOne = [[TypeOneModel alloc] init];
    modelOne.type = @"type1";
    modelOne.title = @"第一种类型";
    [array addObject:modelOne];
    
    TypeTwoModel *modelTwo = [[TypeTwoModel alloc] init];
    modelTwo.type = @"type2";
    modelTwo.title = @"第二种类型";
    modelTwo.subTitle = @"第二种类型的副标题";
    [array addObject:modelTwo];
    
    TypeThreeModel *modelThree = [[TypeThreeModel alloc] init];
    modelThree.type = @"type3";
    modelThree.title = @"第三种类型";
    modelThree.imageName = @"icon_flower";
    [array addObject:modelThree];

    self.datas = [self changeModelWithType:array].copy;
    [self buildAdapters];
}

- (void)deleteAdapterAtIndex:(NSInteger)index {
    NSMutableArray *mutableArray = self.datas.mutableCopy;
    [mutableArray removeObjectAtIndex:index];
    self.datas = mutableArray;
    [self buildAdapters];
}

- (void)buildAdapters {
    self.adapters = [MyAdapterBuilder buildAdapters:self.datas];
}

- (void)reload {
    NSMutableArray *array = self.datas.mutableCopy;
    TypeOneModel *modelOne = [[TypeOneModel alloc] init];
    modelOne.type = @"type1";
    modelOne.title = @"类型一";
    [array addObject:modelOne];
    
    TypeTwoModel *modelTwo = [[TypeTwoModel alloc] init];
    modelTwo.type = @"type2";
    modelTwo.title = @"第二种类型";
    modelTwo.subTitle = @"第二种类型的副标题";
    [array addObject:modelTwo];
    
    TypeThreeModel *modelThree = [[TypeThreeModel alloc] init];
    modelThree.type = @"type3";
    modelThree.title = @"第三种类型";
    modelThree.imageName = @"icon_flower";
    [array addObject:modelThree];
    
    self.datas = [self changeModelWithType:array].copy;
    [self buildAdapters];
}

- (void)uploadDatas {
    /// 上传数据
    /// 上传完数据刷新
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self featchData];
        if (self.uploadSuccess) {
            self.uploadSuccess();
        }
    });
    
}


- (NSArray<MyModel *> *)changeModelWithType:(NSArray<MyModel *> *)models{
    if (self.type == SourceTypeFinishPage) {
        for (MyModel *model in models) {
            model.style = @"finishPage";
        }
    }
    return models;
}




@end
