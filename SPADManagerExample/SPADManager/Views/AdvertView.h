//
//  AdvertView.h
//  SPADManagerExample
//
//  Created by BluePan on 16/5/21.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

//广告view
#import <UIKit/UIKit.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

@interface AdvertView : UIView

@property (nonatomic, weak) IBOutlet GADBannerView *adBannerView;

+ (instancetype)getView:(UIView *)view;
- (void)setData:(UIViewController *)vc adKey:(NSString *)adKey adType:(NSInteger)adType;

@end
