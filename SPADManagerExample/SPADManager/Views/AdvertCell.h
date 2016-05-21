//
//  AdvertCell.h
//  SPADManagerExample
//
//  Created by BluePan on 16/5/21.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

//广告Cell
#import <UIKit/UIKit.h>

@interface AdvertCell : UITableViewCell

+ (CGFloat)rowHeight;
+ (instancetype)cellWithTableView:(UITableView *)tableView vc:(UIViewController *)vc;

@end
