//
//  MyTableViewAdapter.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/6.
//

#import "MyTableViewAdapter.h"
#import "MyModel.h"

@interface MyTableViewAdapter ()

@property (nonatomic,weak) UITableView *tableView;

@property (nonatomic,copy) NSArray<MyModel *> *datas;

@end

@implementation MyTableViewAdapter

- (instancetype)initWithTableView:(UITableView *)tableView {
    if (self = [super init]) {
        self.tableView = tableView;
    }
    return self;
}

- (void)loadData:(NSArray<MyModel *> *)models withAdapters:(NSArray<MyBaseCellsAdapter *> *)adapters {
    self.adapterList = adapters;
    self.datas = models;
    [self.tableView reloadData];
}


#pragma mark -- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyBaseCellsAdapter *adapter = self.adapterList[indexPath.section];
    id<MyCellProtocol> cell = adapter.cells[indexPath.row];
    if ([cell respondsToSelector:@selector(cellHeight)]) {
        return [cell cellHeight];
    } else if ([cell respondsToSelector:@selector(defaultHeight)]) {
        return [cell defaultHeight];
    }
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    MyBaseCellsAdapter *adapter = self.adapterList[section];
    return adapter.footerHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *sectionFooterView = [[UIView alloc] init];
    sectionFooterView.backgroundColor = [UIColor clearColor];
    return sectionFooterView;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.adapterList.count;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    MyBaseCellsAdapter *adapter = self.adapterList[section];
    return adapter.cells.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MyBaseCellsAdapter *adapter = self.adapterList[indexPath.section];
    id<MyCellProtocol> cell = adapter.cells[indexPath.row];
    if ([cell respondsToSelector:@selector(clickAction)]) {
        [cell clickAction];
    }
}


#pragma mark -- UITableViewDataSource


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MyBaseCellsAdapter *adapter = self.adapterList[indexPath.section];
    id<MyCellProtocol> adapterCell = adapter.cells[indexPath.row];
    NSString *identifier;
    if ([adapterCell respondsToSelector:@selector(classType)]) {
        identifier = NSStringFromClass([adapterCell classType]);
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        [tableView registerClass:[adapterCell classType] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    if([cell conformsToProtocol:@protocol(MyCellProtocol)]) {
        UITableViewCell<MyCellProtocol> *myCell = (UITableViewCell<MyCellProtocol> *) cell;
        
        if ([myCell respondsToSelector:@selector(loadData:)]) {
            [myCell loadData:self.datas[indexPath.section]];
        }
        
        if ( [myCell respondsToSelector:@selector(setRefreshAction:)]) {
            __weak typeof (self) wSelf = self;
            myCell.refreshAction = ^{
                __strong typeof (wSelf) sSelf = wSelf;
                if (sSelf.reload) {
                    self.reload();
                }
                [sSelf.tableView reloadData];
            };
        }
        
        if ([myCell respondsToSelector:@selector(setDeleteAction:)]) {
            __weak typeof (tableView) weakTableView = tableView;
            myCell.deleteAction = ^{
                __strong typeof (weakTableView) tableView = weakTableView;
                if (self.deleteIndex) {
                    self.deleteIndex(indexPath.section);
                }
                [tableView reloadData];
            };
        }
    }
    return cell;
}




@end
