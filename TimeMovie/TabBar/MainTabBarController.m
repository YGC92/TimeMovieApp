//
//  MainTabBarController.m
//  TimeMovie
//
//  Created by qianfeng on 15/11/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MainTabBarController.h"
#import "HomeViewController.h"
#import "PayticketViewController.h"
#import "StoreViewController.h"
#import "DiscoverViewController.h"
#import "MyinfoViewController.h"
@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createTabBar];
}
#pragma mark - 自定制创建tabbar
-(void)createTabBar
{
    NSMutableArray* viewControllerArray=[[NSMutableArray alloc]init];
    NSArray* classNameArray=@[@"HomeViewController",@"PayticketViewController",@"StoreViewController",@"DiscoverViewController",@"MyinfoViewController"];
    int i=0;
    for (NSString* className in classNameArray) {
        Class class=NSClassFromString(className);
        BasicViewController* vc=[[class alloc]init];
        UINavigationController* nvc=[[UINavigationController alloc]initWithRootViewController:vc];
        [viewControllerArray addObject:nvc];
        i++;
    }
    self.viewControllers=viewControllerArray;
    [self createCustomBar];
}
-(void)createCustomBar
{
    NSArray* titleArray=@[@"首页",@"购票",@"商城",@"发现",@"我的"];
    NSArray* imageArray=@[@"home",@"payticket",@"store",@"discover",@"myinfo"];
    NSArray* seleteImageArray=@[@"home_on",@"payticket_on",@"store_on",@"discover_on",@"myinfo_on"];
    float width = screen_WIDTH / 5.0f;
    for (int i = 0; i < self.viewControllers.count; i++) {
        
        UIButton *TabbarButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        TabbarButton.frame = CGRectMake(i * width, 0, width , tabBar_Height);
        
        [TabbarButton setBackgroundImage:imageNameRenderStr(imageArray[i]) forState:UIControlStateNormal];
        
        [TabbarButton setBackgroundImage:imageNameRenderStr(seleteImageArray[i]) forState:UIControlStateSelected];
        
        [TabbarButton setTitle:titleArray[i] forState:UIControlStateNormal];
        
        [TabbarButton setTitleColor:[UIColor colorWithRed:11 / 255.0f green:95 / 255.0f blue:183 / 255.0f alpha:1] forState:UIControlStateSelected];
        
        [TabbarButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        
        TabbarButton.titleLabel.font =fontSize14;
        
        //把文字往下移
        
        [TabbarButton setTitleEdgeInsets:UIEdgeInsetsMake(30.0f, 0, 0, 0)];
        
        //按钮需要添加点击事件
        TabbarButton.tag = 300 + i;
        [TabbarButton addTarget:self action:@selector(tabbarButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.tabBar addSubview:TabbarButton];
        
        //我们默认第一个是选中的
        if (i == 0) {
            TabbarButton.selected = YES;
        }
        
    }
}
#pragma mark - tabBar 上面的按钮点击事件
- (void)tabbarButtonClick:(UIButton *)button{
    
    button.selected = YES;
    //选中第几个坑
    self.selectedIndex = button.tag - 300;
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        
        UIButton *TabBarbButton = (UIButton*)[self.tabBar viewWithTag:300 + i];
        if (button.tag != TabBarbButton.tag) {
            TabBarbButton.selected = NO;
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
