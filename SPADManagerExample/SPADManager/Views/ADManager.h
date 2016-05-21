//
//  ADManager.h
//  SPADManagerExample
//
//  Created by BluePan on 16/5/21.
//  Copyright © 2016年 易云世纪科技. All rights reserved.
//

//广告管理
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, AdType)
{
    AdTypeAdmob,//admob广告
    AdTypeDommob//多盟广告
};

@interface ADManager : NSObject

@property (nonatomic, strong) NSString *adKey;//广告key
@property (nonatomic, assign) AdType adType;//广告类型

+ (instancetype)sharedInstance;
- (void)registerAd:(NSString *)key type:(AdType)type;

@end
