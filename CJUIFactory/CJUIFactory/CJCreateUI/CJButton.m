//
//  CJButton.m
//  CJUIFactory
//
//  Created by mac on 2019/4/12.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import "CJButton.h"
@interface CJButton()
@property(nonatomic,assign)CJImageAlignment imageAlignment;
@property(nonatomic,assign)CGFloat spaceBetweenTitleAndImage;

@end

@implementation CJButton

+ (CJButton *)btnInit{
    
    CJButton *btn = [CJButton buttonWithType:UIButtonTypeCustom];
    btn.clipsToBounds = YES;
    return btn;
}

- (CJButton *(^)(CGRect frame))btnFrame{
    
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (CJButton *(^)(UIColor *color))btnBgColor{
    
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (CJButton *(^)(NSString *text))btnText{
    
    return ^(NSString *text){
        [self setTitle:text forState:UIControlStateNormal];
        return self;
    };
}

- (CJButton *(^)(UIFont *textFont))btnFont{
    return ^(UIFont *textFont){
        self.titleLabel.font = textFont;
        return self;
    };
}

- (CJButton *(^)(UIColor *normalTitleColor))btnNormalTitleColor{
    
    return ^(UIColor *normalTitleColor){
        [self setTitleColor:normalTitleColor forState:UIControlStateNormal];
        return self;
    };
    
}

- (CJButton *(^)(UIColor *selectTitleColor))btnSelectTitleColor{
    
    return ^(UIColor *selectTitleColor){
        [self setTitleColor:selectTitleColor forState:UIControlStateSelected];
        return self;
    };
}

- (CJButton *(^)(NSString *imageName))btnBgImg{
    
    return ^(NSString *imageName){
        [self setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        return self;
    };
}


- (CJButton *(^)(NSString *normalImageName))btnNormalImgName {
    
    return ^(NSString *normalImageName){
        [self setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
        return self;
    };
}


- (CJButton *(^)(NSString *highlightImageName))btnHighlightImgName {
    
    return ^(NSString *highlightImageName) {
        
        [self setImage:[UIImage imageNamed:highlightImageName] forState:UIControlStateNormal];
        return self;
    };
    
}



- (CJButton *(^)(NSString *selectImageName))btnSelectImgName {
    
    return  ^(NSString *selectImageName) {
        
        [self setImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
        return self;
    };
}




- (CJButton *(^)(id target,SEL sel))btnTargetAction {
    
    return  ^(id target,SEL sel) {
        
        [self addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
        return self;
    };

}


- (CJButton *(^)(CGFloat radius))btnCornerRadius{
    
    return ^(CGFloat radius) {
        
        self.layer.cornerRadius = radius;
        return self;
        
    };
}


// 设置圆角边线的颜色
- (CJButton *(^)(UIColor *color))btnCornerColor {
    
   return ^(UIColor *color) {
        
        self.layer.borderColor = color.CGColor;
        
        return self;
        
    };
    
}


// 设置圆角边线的宽度
- (CJButton *(^)(CGFloat width))btnCornerWidth {
    
    return^(CGFloat width) {
        
        self.layer.borderWidth = width;
        return self;
    };
}

- (CJButton *(^)(CJImageAlignment imageAlignment))btnImgAlignment{
    
    return ^(CJImageAlignment imageAlignment){
        self.imageAlignment = imageAlignment;
        return self;
    };
}

- (CJButton *(^)(CGFloat spaceBetweenTitleAndImage))btnSpaceBetweenTitleAndImage{
    return ^(CGFloat spaceBetweenTitleAndImage){
        self.spaceBetweenTitleAndImage = spaceBetweenTitleAndImage;
        return self;
    };
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat space = self.spaceBetweenTitleAndImage;
    
    
    CGFloat titleW = CGRectGetWidth(self.titleLabel.bounds);//titleLabel的宽度
    CGFloat titleH = CGRectGetHeight(self.titleLabel.bounds);//titleLabel的高度
    
    CGFloat imageW = CGRectGetWidth(self.imageView.bounds);//imageView的宽度
    CGFloat imageH = CGRectGetHeight(self.imageView.bounds);//imageView的高度
    
    CGFloat btnCenterX = CGRectGetWidth(self.bounds)/2;//按钮中心点X的坐标（以按钮左上角为原点的坐标系）
    CGFloat imageCenterX = btnCenterX - titleW/2;//imageView中心点X的坐标（以按钮左上角为原点的坐标系）
    CGFloat titleCenterX = btnCenterX + imageW/2;//titleLabel中心点X的坐标（以按钮左上角为原点的坐标系）
    
    
    switch (self.imageAlignment)
    {
        case CJImageAlignmentTop:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(imageH/2+ space/2, -(titleCenterX-btnCenterX), -(imageH/2 + space/2), titleCenterX-btnCenterX);
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleH/2 + space/2), btnCenterX-imageCenterX, titleH/2+ space/2, -(btnCenterX-imageCenterX));
        }
            break;
        case CJImageAlignmentLeft:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space/2, 0,  -space/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space/2, 0, space);
        }
            break;
        case CJImageAlignmentBottom:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageH/2+ space/2), -(titleCenterX-btnCenterX), imageH/2 + space/2, titleCenterX-btnCenterX);
            self.imageEdgeInsets = UIEdgeInsetsMake(titleH/2 + space/2, btnCenterX-imageCenterX,-(titleH/2+ space/2), -(btnCenterX-imageCenterX));
        }
            break;
        case CJImageAlignmentRight:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageW + space/2), 0, imageW + space/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleW+space/2, 0, -(titleW+space/2));
        }
            break;
        default:
            break;
    }
}



@end
