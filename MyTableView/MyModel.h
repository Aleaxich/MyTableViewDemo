//
//  MyModel.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyModel : NSObject

@property (nonatomic,copy) NSString *type;

@property (nonatomic,copy) NSString *style;

@end



@interface TypeOneModel : MyModel

@property (nonatomic,copy) NSString *title;

@end


@interface TypeTwoModel : MyModel

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *subTitle;

@end


@interface TypeThreeModel : MyModel

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *subTitle;

@property (nonatomic,copy) NSString *imageName;

@end

@interface TypeFourModel : MyModel

@property (nonatomic,assign) NSInteger speed;

@property (nonatomic,assign) NSInteger distance;

@end


@interface DeviceDataModel : NSObject

@property (nonatomic,assign) NSInteger speed;

@property (nonatomic,assign) NSInteger distance;

@end

NS_ASSUME_NONNULL_END
