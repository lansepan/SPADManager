//
//  ViewController.m
//  SPADManagerExample
//
//  Created by BluePan on 16/5/20.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

#import "ViewController.h"

@import GoogleMobileAds;
@class GADBannerView;

@interface ViewController ()

@property(nonatomic, weak) IBOutlet GADBannerView *bannerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bannerView.adUnitID = @"ca-app-pub-3940256099942544/2934735716";
    self.bannerView.rootViewController = self;
    [self.bannerView loadRequest:[GADRequest request]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
