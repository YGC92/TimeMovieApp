//
//  BasicViewController.h
//  TimeMovie
//
//  Created by qianfeng on 15/11/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicViewController : UIViewController
//网络请求小动画
- (void)showMyAlertView;
//停止小动画
-(void)stopMyAnimation;
//网络请求失败
-(void)failNetWork;
//导航条视图
-(void)setNavView;
@end
