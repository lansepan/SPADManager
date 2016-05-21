//
//  ViewController.m
//  SPADManagerExample
//
//  Created by BluePan on 16/5/20.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

#import "ViewController.h"
#import "AdvertCell.h"
#import "AdvertView.h"
#import "AppDelegate.h"

@import GoogleMobileAds;
@class GADBannerView;

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, weak) IBOutlet UIView *viewAd;

@end

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AdvertView *advertView = [AdvertView getView:self.viewAd];
    [self.viewAd addSubview:advertView];
    [advertView setData:self adKey:@"ca-app-pub-3940256099942544/2934735716" adType:0];
    [advertView.adBannerView loadRequest:[GADRequest request]];
}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        return [AdvertCell rowHeight];
    }
    else
    {
        return 44;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        AdvertCell *cell = [AdvertCell cellWithTableView:tableView vc:self adKey:@"ca-app-pub-3940256099942544/2934735716" adType:0];
        [cell.adBannerView loadRequest:[GADRequest request]];
        return cell;
    }
    else
    {
        static NSString *cellId = @"CellId";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
        if(!cell)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        }
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
