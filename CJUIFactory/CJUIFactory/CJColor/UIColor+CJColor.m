//
//  UIColor+CJColor.m
//  CJUIFactory
//
//  Created by mac on 2019/4/22.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import "UIColor+CJColor.h"

@implementation UIColor (CJColor)

+ (UIColor *)cjRandomColor
{
    return CJRandomColor;
}

+ (UIColor *)cjClearColor{
  
    return [UIColor clearColor];
}

+ (UIColor *)cjBackgroundColor{
    
    return CJRGB16Color(0xF2F2F2);
}

/**
 主 字体颜色
 
 @return <#return value description#>
 */
+ (UIColor *)cjMainTextColor{
    
    return CJRGB16Color(0x333333);
}

/**
 次级 颜色字体
 
 @return <#return value description#>
 */
+ (UIColor *)cjSubheadTextColor{
    
    return CJRGB16Color(0x9D9D9D);

}


// 基础色 

+ (UIColor *)cjWhiteColor{
    
    return [UIColor whiteColor];
}
+ (UIColor *)cjBlackColor{
    
    return [UIColor blackColor];
}

+ (UIColor *)cjGrayColor{
    
    return [UIColor grayColor];
}

+ (UIColor *)cjLightGrayColor{
    
    return [UIColor lightGrayColor];
}

+ (UIColor *)cjBlueColor{
    
    return [UIColor blueColor];
}

+ (UIColor *)cjRedColor;{
    
    return [UIColor redColor];
}


@end
