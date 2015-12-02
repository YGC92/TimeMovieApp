//
//  MyinfoViewController.m
//  TimeMovie
//
//  Created by qianfeng on 15/11/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MyinfoViewController.h"

@interface MyinfoViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* _tableView;
}
@end

@implementation MyinfoViewController
-(void)viewWillAppear:(BOOL)animated
{
    //隐藏导航栏
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden=YES;
}
-(void)viewWillDisappear:(BOOL)animated{
   //显示导航栏
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden=NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createnavTopView];
    [self createTableView];
}
#pragma mark - 创建top视图
-(void)createnavTopView{
    //top的背景图
    UIImageView* topView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, screen_WIDTH, 160.0f*scale_Screen)];
    topView.userInteractionEnabled=YES;
    topView.image=[UIImage imageNamed:@"icon_myinfo_top"];
    [self.view addSubview:topView];
    //头像
    UIImageView* iconView=[[UIImageView alloc]initWithFrame:CGRectMake(20, 60, 55.0f*scale_Screen, 55.0f*scale_Screen)];
    iconView.image=[UIImage imageNamed:@"icon_avatar_default_image_55x55"];
    //后期这里加手势
    [topView addSubview:iconView];
    //登陆注册按钮
    NSArray* backArray=@[@"bt_solid_orange_68",@"v10_skip_bt_gray"];
    NSArray* titleArray=@[@"登录",@"注册"];
    for (int i=0; i<2; i++) {
        UIButton* button=[MYCustomView createButtonWithFrame:CGRectMake(90+(100.0f*scale_Screen)*i, 70.0f, 70.0f*scale_Screen, 30*scale_Screen) target:self SEL:@selector(resingAndLogin:) backgoundImage:[UIImage imageNamed:backArray[i]] title:titleArray[i] image:nil];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button.titleLabel.font=fontSize14;
        [topView addSubview:button];
    }
    //小信箱
    UIImageView* smallView=[[UIImageView alloc]initWithFrame:CGRectMake(280, 30, 25*scale_Screen, 20*scale_Screen)];
    smallView.userInteractionEnabled=YES;
    smallView.image=[UIImage imageNamed:@"icon_my_message"];
    [topView addSubview:smallView];
}
#pragma mark - 创建TableView
-(void)createTableView{
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, screen_WIDTH, screen_HEIGHT) style:UITableViewStylePlain];

}
#pragma mark - 实现登陆注册按钮的方法
-(void)resingAndLogin:(UIButton*)button
{

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
