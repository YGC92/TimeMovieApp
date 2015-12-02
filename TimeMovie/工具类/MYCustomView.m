//
//  MYCustomView.m
//  LPKitchen
//
//  Created by LongHuanHuan on 15/11/23.
//  Copyright © 2015年 com.LiuLiPing. All rights reserved.
//

#import "MYCustomView.h"

@implementation MYCustomView


+ (UILabel *)createLabelWithFrame:(CGRect)frame textString:(NSString *)text withFont:(float)fontSize textColor:(UIColor *)color{

    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    //无限折行
    label.numberOfLines = 0;
    
    return label;
}


+ (UIButton*)createButtonWithFrame:(CGRect)frame target:(id)target SEL:(SEL)method backgoundImage:(UIImage *)image{

    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = frame;
    
    if (image) {
        
        [but setBackgroundImage:image forState:UIControlStateNormal];
    }
    [but addTarget:target action:method forControlEvents:UIControlEventTouchUpInside];
    
    return but;
}

+ (UIButton*)createButtonWithFrame:(CGRect)frame target:(id)target SEL:(SEL)method backgoundImage:(UIImage *)image title:(NSString *)title image:(UIImage *)sImage{

    UIButton *but = [MYCustomView createButtonWithFrame:frame target:target SEL:method backgoundImage:image];
    
    if (sImage) {
        [but setImage:sImage forState:UIControlStateNormal];
    }
    
    if (title) {
        [but setTitle:title forState:UIControlStateNormal];
    }
    
    return but;
}

@end
