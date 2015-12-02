//
//  BasicViewController.m
//  TimeMovie
//
//  Created by qianfeng on 15/11/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()
{
    UIView* _alertView;
    UIImageView * _animaImageView;
}
@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航条的颜色
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:11 / 255.0f green:95 / 255.0f blue:183 / 255.0f alpha:1]];
}
#pragma mark - 导航条
-(void)setNavView{
    UIImageView* navImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, scale_Screen* 60, scale_Screen* 20)];
    navImageView.image=[UIImage imageNamed:@"ele_logo_mtime"];
    self.navigationItem.titleView = navImageView;
}
#pragma mark - 网络请求提示框
- (void)showMyAlertView{
    _alertView=[[UIView alloc]initWithFrame:CGRectMake(0, 0,scale_Screen*120.0f, scale_Screen*120.0f)];
   _alertView.center=self.view.center;
    _alertView.backgroundColor=[UIColor grayColor];
    _alertView.layer.masksToBounds=YES;
    _alertView.layer.cornerRadius=scale_Screen*60.0f;
    [self.view addSubview:_alertView];
   
    //创建动画
    UIImage * aniamImage = [UIImage imageNamed:@"loading0001"];
    _animaImageView = [[UIImageView alloc] init];
    _animaImageView.image = aniamImage;
    _animaImageView.frame = CGRectMake(scale_Screen*30.0f, scale_Screen*20.0f,scale_Screen* 60.0f,scale_Screen* 60.0f);
    
    //显示文字
    UILabel* label=[MYCustomView createLabelWithFrame:CGRectMake(scale_Screen*30.0f, CGRectGetMaxY(_animaImageView.frame), scale_Screen* 60.0f, scale_Screen* 30.0f) textString:@"加载中……" withFont:14.0f textColor:[UIColor whiteColor]];
    [_alertView addSubview:_animaImageView];
    [_alertView addSubview:label];
    
    NSMutableArray * animaArray = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 26; i++) {
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"loading00%02d",i]];
        [animaArray addObject:image];
    }
    
    // 将连续动作的图片数组赋值给birdImageView
    _animaImageView.animationImages = animaArray;
    // 动画持续时间 从第一张图片到最后一张图片动画的时间
    _animaImageView.animationDuration = 0.5;
    // 动画重复次数 0代表最大次数
    _animaImageView.animationRepeatCount = 0;
    // 开启动画
    [_animaImageView startAnimating];
    
}

-(void)stopMyAnimation{
 [_animaImageView stopAnimating];
    [_alertView removeFromSuperview];
    _alertView = nil;
}
-(void)failNetWork{
    _alertView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, screen_WIDTH, screen_HEIGHT)];
     UIImage * failImage = [UIImage imageNamed:@"loadfail"];
    _animaImageView=[[UIImageView alloc]init];
    _animaImageView.frame=CGRectMake((screen_WIDTH-failImage.size.width)/2, 100, failImage.size.width, failImage.size.height);
    _animaImageView.image=failImage;
    [_alertView addSubview:_animaImageView];
    [self.view addSubview:_alertView];
    
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
