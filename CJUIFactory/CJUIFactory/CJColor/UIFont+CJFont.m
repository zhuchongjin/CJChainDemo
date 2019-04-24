//
//  UIFont+CJFont.m
//  CJUIFactory
//
//  Created by mac on 2019/4/23.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import "UIFont+CJFont.h"

//#define kIphone6Height 667.0
#define kIphone6Width 375.0
#define CJSCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width


@implementation UIFont (CJFont)


+ (UIFont *)cjTitleFontX:(CGFloat )x{
   
    return [UIFont systemFontOfSize:((CJSCREEN_WIDTH*((x)/kIphone6Width)))];

}

+ (UIFont *)cjTitleFont12{
    
    return [UIFont cjTitleFontX:12];
}


+ (UIFont *)cjTitleFont13{
   
        return [UIFont cjTitleFontX:13];
}
+ (UIFont *)cjTitleFont14{
    
        return [UIFont cjTitleFontX:14];
}
+ (UIFont *)cjTitleFont15{
    
        return [UIFont cjTitleFontX:15];
}
+ (UIFont *)cjTitleFont16{
    
        return [UIFont cjTitleFontX:16];
}
+ (UIFont *)cjTitleFont17{
    
        return [UIFont cjTitleFontX:17];
}
+ (UIFont *)cjTitleFont18{
    
        return [UIFont cjTitleFontX:18];
}
+ (UIFont *)cjTitleFont19{
    
        return [UIFont cjTitleFontX:19];
}
+ (UIFont *)cjTitleFont20{
    
        return [UIFont cjTitleFontX:20];
}


@end
