//
//  CJLabel.h
//  ControlFactory
//
//  Created by mac on 2019/4/9.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CJLabel : UILabel

+ (CJLabel *)init;

- (CJLabel *(^)(CGRect frame))labFrame;

/**
  CJLabel 字体文本
 */
- (CJLabel *(^)(NSString *text))labText;
/**
 CJLabel 字体大小
 */
- (CJLabel *(^)(UIFont *font))labFont;

- (CJLabel *(^)(UIColor *color))labTextColor;

- (CJLabel *(^)(NSTextAlignment aligment))labAlignment;

- (CJLabel *(^)(UIColor *color))labBgColor;

- (CJLabel *(^)(CGFloat radius))labCornerRadius;

- (CJLabel *(^)(CGFloat borderWidth))labBorderWidth;

- (CJLabel *(^)(UIColor *color))labBorderColor;

- (CJLabel *(^)(NSInteger numberLines))labNumLines;

- (CJLabel *(^)(BOOL adjustToFit))labAdjustsFontSizeToFitWidth;

- (CJLabel *(^)(NSLineBreakMode lineBreakMode))labLineBreakMode;


@end

NS_ASSUME_NONNULL_END
