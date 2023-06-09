//
//  MyBaseCellsAdapter.h
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import <Foundation/Foundation.h>
#import "MyCellProtocol.h"
#import "MyModel.h"
#import "MyHeaderTableViewCell.h"
#import "MyFooterTableViewCell.h"
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface MyBaseCellsAdapter : NSObject

@property (nonatomic,copy) NSArray<id<MyCellProtocol>> *cells;

-(CGFloat)footerHeight;

- (void)buildCells;

@end

NS_ASSUME_NONNULL_END
