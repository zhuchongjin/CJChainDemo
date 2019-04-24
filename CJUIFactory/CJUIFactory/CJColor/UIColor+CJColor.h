//
//  UIColor+CJColor.h
//  CJUIFactory
//
//  Created by mac on 2019/4/22.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define CJRGB16Color(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define CJRGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

#define CJRGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f]

#define CJRandomColor [[UIColor alloc] initWithRed:(CGFloat)(arc4random() % 255)/255.0 green:(CGFloat)(arc4random() % 255)/255.0 blue:(CGFloat)(arc4random() % 255)/255.0 alpha:0.5]



@interface UIColor (CJColor)

/**
 随机色

 @return <#return value description#>
 */
+ (UIColor *)cjRandomColor;


+ (UIColor *)cjClearColor;

/**
 背景色

 @return <#return value description#>
 */
+ (UIColor *)cjBackgroundColor;

/**
 主 字体颜色

 @return <#return value description#>
 */
+ (UIColor *)cjMainTextColor;

/**
 次级 颜色字体

 @return <#return value description#>
 */
+ (UIColor *)cjSubheadTextColor;



// 基础色

+ (UIColor *)cjWhiteColor;

+ (UIColor *)cjBlackColor;

+ (UIColor *)cjGrayColor;

+ (UIColor *)cjLightGrayColor;

+ (UIColor *)cjBlueColor;

+ (UIColor *)cjRedColor;

@end

NS_ASSUME_NONNULL_END
