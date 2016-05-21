//
//  ADManager.m
//  SPADManagerExample
//
//  Created by BluePan on 16/5/21.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

#import "ADManager.h"
#import <GoogleMobileAds/GoogleMobileAds.h>

@implementation ADManager

+ (instancetype)sharedInstance
{
    static ADManager *shareObj = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareObj = [[self alloc] init];
    });
    return shareObj;
}

- (void)registerAd:(NSString *)key type:(AdType)type
{
    self.adKey = key;
    self.adType = type;
}

@end
