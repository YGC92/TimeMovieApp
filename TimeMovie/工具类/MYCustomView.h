//
//  MYCustomView.h
//  LPKitchen
//
//  Created by LongHuanHuan on 15/11/23.
//  Copyright © 2015年 com.LiuLiPing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYCustomView : NSObject

+ (UILabel *)createLabelWithFrame:(CGRect)frame textString:(NSString *)text withFont:(float)fontSize textColor:(UIColor *)color;

 
+ (UIButton*)createButtonWithFrame:(CGRect)frame target:(id)target SEL:(SEL)method backgoundImage:(UIImage *)image;


+ (UIButton*)createButtonWithFrame:(CGRect)frame target:(id)target SEL:(SEL)method backgoundImage:(UIImage *)image title:(NSString *)title image:(UIImage *)sImage;

@end
