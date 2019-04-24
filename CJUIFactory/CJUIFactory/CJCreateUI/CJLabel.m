//
//  CJLabel.m
//  ControlFactory
//
//  Created by mac on 2019/4/9.
//  Copyright © 2019年 apple. All rights reserved.
//

#import "CJLabel.h"

@implementation CJLabel


/**
 可根据项目不同这这来设置一些通用的属性
 
 后期可根据.x属性重新设置

 @return <#return value description#>
 */
+ (CJLabel *)init{
    
    CJLabel *cjLabel = [[CJLabel alloc] init];
    
    cjLabel.font = [UIFont systemFontOfSize:14];
    
    cjLabel.textColor = [UIColor blackColor];
    
    cjLabel.backgroundColor = [UIColor whiteColor];
    
    return cjLabel;
}
- (CJLabel *(^)(CGRect frame))labFrame {
    
    return  ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
  
}

- (CJLabel *(^)(NSString *text))labText {
    
    return  ^(NSString *text) {
        self.text = text;
        return self;
    };
}


- (CJLabel *(^)(UIFont *font))labFont {
    
    return  ^(UIFont *font) {
        self.font = font;
        return self;
    };

}

- (CJLabel *(^)(BOOL adjustToFit))labAdjustsFontSizeToFitWidth{
    
    return ^(BOOL adjustToFit){
        self.adjustsFontSizeToFitWidth = adjustToFit;
        return self;
    };
}

- (CJLabel *(^)(UIColor *color))labTextColor {
    
    return ^(UIColor *color) {
        self.textColor = color;
        return self;
    };
}


- (CJLabel *(^)(NSTextAlignment alignment))labAlignment {
    
   return  ^(NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}


- (CJLabel *(^)(UIColor *color))labBgColor {
    
   return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}


- (CJLabel *(^)(CGFloat radius))labCornerRadius {
    
    return  ^(CGFloat radius) {
//        self.clipsToBounds = YES;
        self.layer.masksToBounds = YES;;


        self.layer.cornerRadius = radius;
        return self;
    };
}

- (CJLabel *(^)(CGFloat borderWidth))labBorderWidth{
    
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

#pragma mark ---------BorderColor
- (CJLabel *(^)(UIColor *color))labBorderColor{
    
    return ^(UIColor *color){
        self.layer.borderColor = color.CGColor;
        return self;
    };
}

- (CJLabel *(^)(NSInteger numberLines))labNumLines {
    
     return ^(NSInteger numberLines) {
        self.numberOfLines = numberLines;
        return self;
    };
}


- (CJLabel *(^)(NSLineBreakMode lineBreakMode))labLineBreakMode {
    
    return  ^(NSLineBreakMode lineBreakMode) {
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}







/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//-(CJLabel *)pp_make:(void (^)(CJLabel *cjlabel))make
//{
//    CJLabel *m = self;
//    if (!m) { return nil; }
//    if (make) { make(m);}
//    return self;
//}
//
//-(CJLabel *(^)(CGRect))frame
//{
//    return ^CJLabel *(CGRect frame){
//        self.frame = frame;
//        return self;
//    };
//}
//
//#pragma mark --- 背景色
//-(CJLabel *(^)(UIColor *))bgColor
//{
//    return ^CJLabel *(UIColor *color){
//        self.backgroundColor = color;
//        return self;
//    };
//
//
//}

@end
