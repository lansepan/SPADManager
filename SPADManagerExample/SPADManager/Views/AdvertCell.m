//
//  AdvertCell.m
//  SPADManagerExample
//
//  Created by BluePan on 16/5/21.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

#import "AdvertCell.h"
#import "ADManager.h"
#import <GoogleMobileAds/GoogleMobileAds.h>

@interface AdvertCell()

@property (nonatomic, weak) IBOutlet GADBannerView *adBannerView;

@end

@implementation AdvertCell

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

+ (CGFloat)rowHeight
{
    return 51;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView vc:(UIViewController *)vc
{
    static NSString *cellId = @"AdvertCell";
    AdvertCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell == nil)
    {
        UINib *nib = [UINib nibWithNibName:cellId bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:cellId];
        cell = [tableView dequeueReusableCellWithIdentifier:cellId];
        [cell setData:vc];
    }
    return cell;
}

- (void)setData:(UIViewController *)vc
{
    if([ADManager sharedInstance].adType==AdTypeAdmob)
    {
        self.adBannerView.hidden = NO;
        self.adBannerView.adUnitID = [ADManager sharedInstance].adKey;
        self.adBannerView.rootViewController = vc;
        [self.adBannerView loadRequest:[GADRequest request]];
    }
}

@end
