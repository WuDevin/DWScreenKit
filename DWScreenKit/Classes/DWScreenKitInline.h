//
//  DWScreenKitInline.h
//  DWAppProject
//
//  Created by lg on 2018/9/14.
//  Copyright © 2018 DevinWu. All rights reserved.
//  注:先要在 prefixHeader 导入 DWScreenKitInline.h 才能正常使用


#ifndef DWScreenKitInline_h
#define DWScreenKitInline_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "DWScreenKit.h"

/** 设备尺寸 */
static inline kScreenSizeModel kScreenSizeModelType(){
    return [DWScreenKit screenSizeModel];
}

/** 设备名称 */
static inline NSString *kDeviceModelName(){
    return [DWScreenKit deviceModelName];
}

/** 屏幕高度 */
static inline CGFloat kScreenHeight(){
    return [DWScreenKit screenHeight];
}

/** 屏幕宽度 */
static inline CGFloat kScreenWidth(){
    return [DWScreenKit screenWidth];
}

/** 顶部栏高度 */
static inline CGFloat kNavgationBarHeight(){
    return [DWScreenKit navgationBarHeight];
};

/** 缩放因子X */
static inline CGFloat kScreenScaleX(){
    return [DWScreenKit scaleX];
}

/** 底部栏高度 */
static inline CGFloat kTabBarHeight(){
    return [DWScreenKit tabBarHeight];
};

/** 安全区域 */
static inline UIEdgeInsets kScreenSafeAreaInset(){
    return [DWScreenKit safeAreaInset];
}

/** 状态栏高度 */
static inline CGFloat kStatusBarHeight(){
    return [DWScreenKit statusBarHeight];
}

/** 适配字体 */
static inline UIFont *kScaleFontSize(CGFloat fontSize){
    return [DWScreenKit scaleFontSize:fontSize];
}

/** 适配: CGRect */
static inline CGRect kScaleRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
    return [DWScreenKit CGScaleMakeX:x Y:y width:width height:height];
}

static inline CGRect kScaleFullScreenRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
    return [DWScreenKit CGScaleFullScreen];
}

/** 适配: CGPoint*/
static inline CGPoint kScalePointMake(CGFloat x, CGFloat y){
    return [DWScreenKit CGScalePointMakeX:x Y:y];
}

/** 适配: CGSize*/
static inline CGSize kScaleSizeMake(CGFloat width, CGFloat height){
    return [DWScreenKit CGScaleSizeMakeWidth:width hight:height];
}

#endif /* DWScreenKitInline_h */
