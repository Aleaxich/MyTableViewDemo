//
//  MyDelegate.m
//  MyTableView
//
//  Created by 匿名用户的笔记本 on 2023/6/19.
//

#import "MyDelegate.h"

@implementation MyDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyRow *row = self.sections[indexPath.section].createRow();
    UITableViewCell *cell = row.createCell();
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
        MySection *mySection = self.sections[section];
        if (mySection.createHeader) {
            return mySection.createHeader();
        }
    return [[UIView alloc] init];
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    MySection *mySection = self.sections[section];
    if (mySection.createHeader) {
        CGFloat height =  [mySection.createHeader() defaultHeaderHeight];
        return height;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] init];
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyRow *row = self.sections[indexPath.section].createRow();
    return row.rowHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MyRow *row = self.sections[indexPath.section].createRow();
    if (row.clickAction) {
        row.clickAction();
    }
    
}



@end
