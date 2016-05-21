//
//  AdvertView.m
//  SPADManagerExample
//
//  Created by BluePan on 16/5/21.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

#import "AdvertView.h"

@interface AdvertView()

@end

@implementation AdvertView

+ (UIView *)loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle
{
    UIView *result = nil;
    NSArray *elements = [bundle loadNibNamed:nibName owner:owner options:nil];
    for(id object in elements)
    {
        if([object isKindOfClass:[self class]])
        {
            result = object;
            break;
        }
    }
    return result;
}

+ (instancetype)getView:(UIView *)view
{
    AdvertView *v = (AdvertView *)[AdvertView loadInstanceFromNibWithName:@"AdvertView" owner:nil bundle:[NSBundle mainBundle]];
    v.frame = CGRectMake(0, 0,CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
    return v;
}

- (void)setData:(UIViewController *)vc adKey:(NSString *)adKey adType:(NSInteger)adType
{
    if(adType==0)
    {
        self.adBannerView.hidden = NO;
        self.adBannerView.adUnitID = adKey;
        self.adBannerView.rootViewController = vc;
//        [self.adBannerView loadRequest:[GADRequest request]];
    }
}

@end
