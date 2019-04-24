//
//  CJView.h
//  CJUIFactory
//
//  Created by mac on 2019/4/15.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CJView : UIView
+ (CJView *)viewInit;

// 设置frame
- (CJView *(^)(CGRect frame))viewFrame;

// 设置背景色
- (CJView *(^)(UIColor *color))viewbgColor;

// 设置边框
- (CJView *(^)(CGFloat borderWidth,UIColor *borderColor))viewBorderWidthColor;
@end

NS_ASSUME_NONNULL_END
