//
//  DWScreenKit.m
//  ScreenAdaptation
//
//  Created by lg on 2018/9/14.
//  Copyright © 2018年 DevinWu. All rights reserved.
//

#import "DWScreenKit.h"
#import <sys/utsname.h>

/** UI设计高度 - iPhone6 */
static const float   kUIDesignHight =  667.0;
/** UI设计宽度 - iPhone6 */
static const float   kUIDesignWidth = 375.0;

@implementation DWScreenKit

/** 设备尺寸 */
+(kScreenSizeModel)screenSizeModel{
    
   CGFloat height =  MAX([[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width);
    
    if (height == 480) {
        return kScreenSizeModel_35;
    }else if (height == 568){
        return kScreenSizeModel_40;
    }else if (height == 667){
        return kScreenSizeModel_47;
    }else if (height == 736){
        return kScreenSizeModel_55;
    }else if ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO){
        return kScreenSizeModel_58;
    }else if ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) : NO){
        return kScreenSizeModel_61;
    }else if ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) : NO){
        return kScreenSizeModel_65;
    }
    return kScreenSizeModel_NEW;
}

/** 设备名称 */
+ (NSString *)deviceModelName{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine
                                            encoding:NSUTF8StringEncoding];
    //simulator
    if ([platform isEqualToString:@"i386"])          return @"Simulator";
    if ([platform isEqualToString:@"x86_64"])        return @"Simulator";
    
    //AirPods
    if ([platform isEqualToString:@"AirPods1,1"])    return @"AirPods";
    
    //Apple TV
    if ([platform isEqualToString:@"AppleTV2,1"])    return @"Apple TV (2nd generation)";
    if ([platform isEqualToString:@"AppleTV3,1"])    return @"Apple TV (3rd generation)";
    if ([platform isEqualToString:@"AppleTV3,2"])    return @"Apple TV (3rd generation)";
    if ([platform isEqualToString:@"AppleTV5,3"])    return @"Apple TV (4th generation)";
    if ([platform isEqualToString:@"AppleTV6,2"])    return @"Apple TV 4K";
    
    //Apple Watch
    if ([platform isEqualToString:@"Watch1,1"])    return @"Apple Watch (1st generation)";
    if ([platform isEqualToString:@"Watch1,2"])    return @"Apple Watch (1st generation)";
    if ([platform isEqualToString:@"Watch2,6"])    return @"Apple Watch Series 1";
    if ([platform isEqualToString:@"Watch2,7"])    return @"Apple Watch Series 1";
    if ([platform isEqualToString:@"Watch2,3"])    return @"Apple Watch Series 2";
    if ([platform isEqualToString:@"Watch2,4"])    return @"Apple Watch Series 2";
    if ([platform isEqualToString:@"Watch3,1"])    return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,2"])    return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,3"])    return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,4"])    return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch4,1"])    return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,2"])    return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,3"])    return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,4"])    return @"Apple Watch Series 4";
    
    //HomePod
    if ([platform isEqualToString:@"AudioAccessory1,1"])    return @"HomePod";
    
    //iPad
    if ([platform isEqualToString:@"iPad1,1"])    return @"iPad";
    if ([platform isEqualToString:@"iPad2,1"])    return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,2"])    return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,3"])    return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,4"])    return @"iPad 2";
    if ([platform isEqualToString:@"iPad3,1"])    return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,2"])    return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,3"])    return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,4"])    return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad3,5"])    return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad3,6"])    return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad4,1"])    return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,2"])    return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,3"])    return @"iPad Air";
    if ([platform isEqualToString:@"iPad5,3"])    return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad5,4"])    return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad6,7"])    return @"iPad Pro (12.9-inch)";
    if ([platform isEqualToString:@"iPad6,8"])    return @"iPad Pro (12.9-inch)";
    if ([platform isEqualToString:@"iPad6,3"])    return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,4"])    return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,11"])    return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad6,12"])    return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad7,1"])    return @"iPad Pro (12.9-inch, 2nd generation)";
    if ([platform isEqualToString:@"iPad7,2"])    return @"iPad Pro (12.9-inch, 2nd generation)";
    if ([platform isEqualToString:@"iPad7,3"])    return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,4"])    return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,5"])    return @"iPad (6th generation)";
    if ([platform isEqualToString:@"iPad7,6"])    return @"iPad (6th generation)";
    
    //iPad mini
    if ([platform isEqualToString:@"iPad2,5"])    return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,6"])    return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,7"])    return @"iPad mini";
    if ([platform isEqualToString:@"iPad4,4"])    return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,5"])    return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,6"])    return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,7"])    return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad4,8"])    return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad4,9"])    return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad5,1"])    return @"iPad mini 4";
    if ([platform isEqualToString:@"iPad5,2"])    return @"iPad mini 4";
    
    //iPhone
    if ([platform isEqualToString:@"iPhone1,1"])     return @"iPhone 1G";
    if ([platform isEqualToString:@"iPhone1,2"])     return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])     return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])     return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])     return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"])     return @"iPhone 4S";
    if ([platform isEqualToString:@"iPhone5,1"])     return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])     return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,3"])     return @"iPhone 5C";
    if ([platform isEqualToString:@"iPhone5,4"])     return @"iPhone 5C";
    if ([platform isEqualToString:@"iPhone6,1"])     return @"iPhone 5S";
    if ([platform isEqualToString:@"iPhone6,2"])     return @"iPhone 5S";
    if ([platform isEqualToString:@"iPhone7,1"])     return @"iPhone 6 Plus";
    if ([platform isEqualToString:@"iPhone7,2"])     return @"iPhone 6";
    if ([platform isEqualToString:@"iPhone8,1"])     return @"iPhone 6s";
    if ([platform isEqualToString:@"iPhone8,2"])     return @"iPhone 6s Plus";
    if ([platform isEqualToString:@"iPhone8,4"])     return @"iPhone SE";
    if ([platform isEqualToString:@"iPhone9,1"])     return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,3"])     return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,2"])     return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone9,4"])     return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone10,1"])    return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,4"])    return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,2"])    return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,5"])    return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,3"])    return @"iPhone X";
    if ([platform isEqualToString:@"iPhone10,6"])    return @"iPhone X";
    if ([platform isEqualToString:@"iPhone11,8"])    return @"iPhone XR";
    if ([platform isEqualToString:@"iPhone11,2"])    return @"iPhone XS";
    if ([platform isEqualToString:@"iPhone11,4"])    return @"iPhone XS Max";
    if ([platform isEqualToString:@"iPhone11,6"])    return @"iPhone XS Max";
    
    //iPod touch
    if ([platform isEqualToString:@"iPod1,1"])    return @"iPod touch";
    if ([platform isEqualToString:@"iPod2,1"])    return @"iPod touch (2nd generation)";
    if ([platform isEqualToString:@"iPod3,1"])    return @"iPod touch (3rd generation)";
    if ([platform isEqualToString:@"iPod4,1"])    return @"iPod touch (4th generation)";
    if ([platform isEqualToString:@"iPod5,1"])    return @"iPod touch (5th generation)";
    if ([platform isEqualToString:@"iPod7,1"])    return @"iPod touch (6th generation)";
    
    return platform;
}

#pragma mark - getters and setters          - Method -
/** 安全区域 */
+ (UIEdgeInsets)safeAreaInset{
    if (@available(iOS 11.0, *)) {
        if ([[[UIApplication sharedApplication] delegate] window]) {
            return [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;
        }
    }
    return UIEdgeInsetsZero;
}

/** 是否是刘海屏系列 */
+(BOOL)isIPhoneX_All{
    
    if (@available(iOS 11.0, *)) {
        return [[[UIApplication sharedApplication] delegate] window].safeAreaInsets.bottom > 0.0 ? YES : NO;
    }
    return NO;
}

/** 顶部栏高度 */
+(CGFloat)navgationBarHeight{
    return [DWScreenKit isIPhoneX_All] ? 88.f:64.f;
}

/** 底部栏高度 */
+(CGFloat)tabBarHeight{
    return [DWScreenKit isIPhoneX_All] ? 83.0f:49.0f;
}

/** 状态栏高度 */
+(CGFloat)statusBarHeight{
    return [DWScreenKit isIPhoneX_All] ? 44.f:20.0f;
}

/** 字体适配 */
+(UIFont *)scaleFontSize:(CGFloat)fontSize{
    
    return [UIFont systemFontOfSize:fontSize*[DWScreenKit scaleX]];
}

+(UIFont *)scaleFontWithName:(NSString *)fontName fontSize:(CGFloat)fontSize{
    
    return [UIFont fontWithName:fontName size:fontSize*[DWScreenKit scaleX]];
}

/** 自适应热点 Height */
+(CGFloat)screenHeight{
    return MAX([UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width);
}

/** 自适应热点 Width */
+(CGFloat)screenWidth{
    return  MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}

/** y偏移比例 */
+(CGFloat)scaleY{
    return [DWScreenKit screenHeight]/kUIDesignHight;
}

/** x偏移比例 */
+(CGFloat)scaleX{
    return [DWScreenKit screenWidth]/kUIDesignWidth;
}

#pragma mark - StoryBorad Xib AutoLayouts   - Method -
/** StoryBoard中得view自动适配 */
+ (void)storyBoradScaleAutoLayoutsWithstoryBoradClassName:(NSString *)storyBoradClassName
{
    [self scaleAutoLayouts: [[UIViewController alloc] initWithNibName:storyBoradClassName bundle:nil].view];
}

/** Xib中得view自动适配 */
+ (void)xibScaleAutoLayoutsWithNibClassName:(NSString *)NibClassName
{
    [self scaleAutoLayouts:[[[NSBundle mainBundle] loadNibNamed: NibClassName owner:nil options:nil]firstObject]];
}

/** 可视化的缩放适配 */
+ (void)scaleAutoLayouts:(UIView *)LayoutsBaseView{
    for (UIView *view in LayoutsBaseView.subviews) {
        view.frame = [DWScreenKit CGScaleMakeX:view.frame.origin.x Y:view.frame.origin.y width:view.frame.size.width height:view.frame.size.height];
        if (view.subviews.count) {
            [self scaleAutoLayouts:LayoutsBaseView];
        }
    }
}

#pragma mark -CGRectScale               - Method -
+ (CGRect)CGScaleMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height{
    return CGScaleMake(x, y, width, height);
}
/** setting a view Frame With the UIfigure number special CGRectGetY
 全部对应数值都将按照比例缩放而Y参数除外的frame.eg: 获取上个控件的Y,不可以再次缩放.
 */
+ (CGRect)CGScaleMakeX:(CGFloat) x CGRectGetY:(CGFloat) GetY width:(CGFloat) width height:(CGFloat) height{
    CGFloat CGRectGetY = [DWScreenKit scaleX];
    return CGScaleMake(x, GetY / CGRectGetY, width, height);
}
/** 返回正常处理通过CGRectGetX方式的frame(其他均正常) */
+ (CGRect)CGScaleMakeGetX:(CGFloat)GetX Y:(CGFloat) Y width:(CGFloat) width height:(CGFloat) height{
    CGFloat CGRectGetX = [DWScreenKit scaleX];
    return CGScaleMake(GetX / CGRectGetX, Y, width, height);
}

/** 比如导航栏的高度,一直不变,或者设置固定的高度,可以使用. */
+ (CGRect)CGScaleMakeX:(CGFloat) x Y:(CGFloat) y  width:(CGFloat) width heightAllSame:(CGFloat) heightAllSame{
    CGFloat heightValue = [DWScreenKit scaleX];
    return CGScaleMake(x, y, width,heightAllSame / heightValue);
}

/** 返回一个全屏幕的 frame */
+ (CGRect)CGScaleFullScreen{
    return CGScaleMake(0, 0, [DWScreenKit screenWidth], [DWScreenKit screenHeight]);
}
#pragma mark -CGScalePoint                - Method -
+ (CGPoint)CGScalePointMakeX:(CGFloat) x Y:(CGFloat) y{
    return CGScalePointMake(x, y);
}

#pragma mark -CGScaleSize                  - Method -
+ (CGSize)CGScaleSizeMakeWidth:(CGFloat) width hight:(CGFloat) hight{
    return CGScaleSizeMake(width, hight);
}

+ (CGSize)CGScaleSizeMakeWH:(CGFloat)WH{
    return CGScaleSizeMake(WH, WH);
}

+ (CGSize)CGScaleSizeMakeFullScreenSize{
    return CGScaleSizeMake( [DWScreenKit screenWidth], [DWScreenKit screenHeight]);
}

#pragma mark - OverrideCGRectMake           - Method -
/**重写CGRectMake 方法*/
CG_INLINE CGRect
CGScaleMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    CGRect rect;
    rect.origin.x = x * [DWScreenKit scaleX];
    rect.origin.y = y * [DWScreenKit scaleX];
    rect.size.width = width * [DWScreenKit scaleX];
    rect.size.height = height * [DWScreenKit scaleX];
    return rect;
}
/**重写CGPoint 方法*/
CG_INLINE CGPoint
CGScalePointMake(CGFloat x, CGFloat y)
{
    CGPoint ScreenKitPoint;
    ScreenKitPoint.x = x * [DWScreenKit scaleX];
    ScreenKitPoint.y = y * [DWScreenKit scaleX];
    return ScreenKitPoint;
}

/**重写CGSize 方法*/
CG_INLINE CGSize
CGScaleSizeMake(CGFloat width, CGFloat height)
{
    CGSize screenKitSize;
    screenKitSize.width = width* [DWScreenKit scaleX];
    screenKitSize.height = height* [DWScreenKit scaleX];
    return screenKitSize;
}

@end
