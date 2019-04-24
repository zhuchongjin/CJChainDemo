//
//  CJButton.h
//  CJUIFactory
//
//  Created by mac on 2019/4/12.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *  按钮中图片的位置
 */
typedef NS_ENUM(NSUInteger, CJImageAlignment) {
    /**
     *  图片在左，默认
     */
    CJImageAlignmentLeft = 0,
    /**
     *  图片在上
     */
    CJImageAlignmentTop,
    /**
     *  图片在下
     */
    CJImageAlignmentBottom,
    /**
     *  图片在右
     */
    CJImageAlignmentRight,
};

@interface CJButton : UIButton

+ (CJButton *)init;

- (CJButton *(^)(CGRect frame))btnFrame;

/**
 btn 背景色
 */
- (CJButton *(^)(UIColor *color))btnBgColor;

/**
 btn 设置text
 */
- (CJButton *(^)(NSString *text))btnText;

/**
 btn 字体大小
 */
- (CJButton *(^)(UIFont *textFont))btnFont;

/**
 普通的title的颜色
 */
- (CJButton *(^)(UIColor *normalTitleColor))btnNormalTitleColor;

/**
 选中的文本title的颜色
 */
- (CJButton *(^)(UIColor *selectTitleColor))btnSelectTitleColor;



/**
 btn 设置背景图片 Name
 */
- (CJButton *(^)(NSString *imageName))btnBgImg;


/**
 btn 设置normalImage
 */
- (CJButton *(^)(NSString *normalImageName))btnNormalImgName;


/**
 btn 设置高亮状态的图片
 */
- (CJButton *(^)(NSString *highlightImageName))btnHighlightImgName;


/**
 btn 设置选中的图片
 */
- (CJButton *(^)(NSString *selectImageName))btnSelectImgName;

/**
 btn target action
 */
- (CJButton *(^)(id target, SEL sel))btnTargetAction;

/**
 btn 设置圆角
 */
- (CJButton *(^)(CGFloat radius))btnCornerRadius;

/**
 btn 设置圆角边线的颜色
 */
- (CJButton *(^)(UIColor *color))btnCornerColor;

/**
 btn 设置圆角边线的宽度
 */
- (CJButton *(^)(CGFloat width))btnCornerWidth;


/**
 *  按钮中图片的位置
 */

- (CJButton *(^)(CJImageAlignment imageAlignment))btnImgAlignment;


/**
 *  按钮中图片与文字的间距
 */

- (CJButton *(^)(CGFloat spaceBetweenTitleAndImage)) btnSpaceBetweenTitleAndImage;




@end

NS_ASSUME_NONNULL_END
