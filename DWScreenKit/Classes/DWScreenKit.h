//
//  DWScreenKit.h
//  ScreenAdaptation
//
//  Created by lg on 2018/9/14.
//  Copyright © 2018年 DevinWu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,kScreenSizeModel) {
    kScreenSizeModel_35,
    kScreenSizeModel_40,
    kScreenSizeModel_47,
    kScreenSizeModel_55,
    kScreenSizeModel_58,
    kScreenSizeModel_61,
    kScreenSizeModel_65,
    kScreenSizeModel_NEW,
};

@interface DWScreenKit : NSObject

/** 设备尺寸 */
+(kScreenSizeModel)screenSizeModel;
/** 设备名称 */
+ (NSString *)deviceModelName;

/** 是否是刘海屏系列 */
+(BOOL)isIPhoneX_All;
/** 安全区域 */
+(UIEdgeInsets)safeAreaInset;
/** 顶部栏高度 */
+(CGFloat)navgationBarHeight;
/** 底部栏高度 */
+(CGFloat)tabBarHeight;
/** 状态栏高度 */
+(CGFloat)statusBarHeight;

/** 字体适配 */
+(UIFont *)scaleFontSize:(CGFloat)fontSize;
+(UIFont *)scaleFontWithName:(NSString *)fontName fontSize:(CGFloat)fontSize;

/** 自适应热点 Height */
+(CGFloat)screenHeight;
/** 自适应热点 Width */
+(CGFloat)screenWidth;
/** y偏移比例 */
+(CGFloat)scaleY;
/** x偏移比例 */
+(CGFloat)scaleX;

/** CGScaleMake */
+ (CGRect)CGScaleMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
+ (CGRect)CGScaleMakeX:(CGFloat) x CGRectGetY:(CGFloat) GetY width:(CGFloat) width height:(CGFloat) height;
+ (CGRect)CGScaleMakeGetX:(CGFloat)GetX Y:(CGFloat) Y width:(CGFloat) width height:(CGFloat) height;
+ (CGRect)CGScaleMakeX:(CGFloat) x Y:(CGFloat) y  width:(CGFloat) width heightAllSame:(CGFloat) heightAllSame;
+ (CGRect)CGScaleFullScreen;

/** CGScalePointMake */
+ (CGPoint)CGScalePointMakeX:(CGFloat) x Y:(CGFloat) y;

/** CGScaleSizeMkae */
+ (CGSize)CGScaleSizeMakeWidth:(CGFloat) width hight:(CGFloat) hight;
+ (CGSize)CGScaleSizeMakeWH:(CGFloat)WH;
+ (CGSize)CGScaleSizeMakeFullScreenSize;

@end
