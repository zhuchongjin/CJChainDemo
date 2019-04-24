//
//  UIView+Tap.h
//  TongChengCTMS
//
//  Created by mac on 02/08/18.
//  Copyright © 2018 ZL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface UIView (Tap)
/**
 *  动态添加手势
 */
- (void)setTapActionWithBlock:(void (^)(void))block ;


@end
