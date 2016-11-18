//
//  RingVC.m
//  YXQ
//
//  Created by rwli on 16/9/30.
//  Copyright © 2016年 rwli. All rights reserved.
//

#define SW [UIScreen mainScreen].bounds.size.width 
#define SH [UIScreen mainScreen].bounds.size.height

#import "RingVC.h"
#import "Mycell1.h"
#import "Mycell2.h"
#import "MessageCenterListVC.h"



@interface RingVC ()<UITableViewDelegate,UITableViewDataSource >
//@property (strong,nonatomic)NSMutableArray *cellArry;
@end

@implementation RingVC
{
    NSMutableArray *_cellArry;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _cellArry =[NSMutableArray arrayWithObjects:@"Mycell1",@"Mycell2",@"Mycell1",@"Mycell1",@"Mycell1", nil];
    
    self.view.backgroundColor =kWhiteColor;
    [self configSubview];
       //总结：
    /*
     
     UITabBarController上的导航控制器和视图控制器：
     
     当启动程序后，点击tabbaritem前，导航栏上的在上，视图的在下，
     点击后反之。。。。。但是除了UIBarButtonItem,这个是视图控制器的
     
     各自显示各自的
     [[UINavigationBar appearance]setTitleTextAttributes
     [[UINavigationBar appearance]setBarStyle
     所以可以设置成一样的，避免点击是颜色风格变化/或者视图控制器除了item起亚什么也不设置
     
     */
    
 
 
    
     //做一个gif的view  --------------------------------------------lose
    
    
//    NSString* PT =[[NSBundle mainBundle]pathForResource:@"002@2x" ofType:@"gif"];
//    NSData *data =[NSData dataWithContentsOfFile:PT];
//    UIWebView *web =[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
//    web.center =self.view.center;
//    web.contentMode =UIViewContentModeScaleToFill;
//    [web loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
//    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:web];
//    
//    UIGestureRecognizer *gesture = [[UIGestureRecognizer alloc]initWithTarget:web action:@selector(ringclick)];
//    [web addGestureRecognizer:gesture];
    
    

  
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"消息"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(ring)];

}




-(void)ring{
    NSLog(@"------------------------message do!");
    
    
    UIViewController *vc =[[MessageCenterListVC alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
//    UIViewController *vc =[[UIViewController alloc]init];
//    vc.title =@"通知中心";
//    vc.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"002.gif"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ] style:UIBarButtonItemStylePlain target:self action:@selector(reply)];
//    
//    
//    UIWebView *web =[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
//    NSString* fp =[[NSBundle mainBundle]pathForResource:@"002@2x" ofType:@"gif"];
//    NSData *data = [NSData dataWithContentsOfFile:fp];
//    [web loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
//    web.contentMode =UIViewContentModeScaleAspectFill;
////    UIGestureRecognizer *ges =[[UIGestureRecognizer alloc]initWithTarget:self action:@selector(reply)];
////    [web addGestureRecognizer:ges];
//
//    UIBarButtonItem *item =  [[UIBarButtonItem alloc]initWithCustomView:web];
//    vc.navigationItem.rightBarButtonItem =item;
//    
//
//    
//    UIScrollView *sc =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, SW, SH)];
//    sc.backgroundColor =kGrayColor;
//    sc.contentSize=CGSizeMake(SW, SH);
//    
//    Mycell1 *cell1 =[[Mycell1 alloc]initWithImgName:@"班级" withlabText_1:@"请各位家长注意，学校决定" withlabText_2:@"今天时国庆节，我没有回家，好命苦，在敲代码，看着大街上人来人往，还生羡慕我也是其中的一员" withlabText_3:@"2016.10.1" withlabText_4:@"浏览量：999" withlabText_5:nil];
//    cell1.frame =CGRectMake(0, 0, SW, 100);
//    cell1.backgroundColor =kWhiteColor;
//    [sc addSubview:cell1];
//    
//    Mycell1 *cell2 =[[Mycell1 alloc]initWithImgName:@"1" withlabText_1:@"国庆节快乐～" withlabText_2:@"吃饭了吗。。。" withlabText_3:@"2016.10.3" withlabText_4:@"浏览量：999" withlabText_5:nil];
//    cell2.frame =CGRectMake(0, 101, SW, 100);
//    cell2.backgroundColor =kWhiteColor;
//    [sc addSubview:cell2];
//
//    
//    Mycell1 *cell3 =[[Mycell1 alloc]initWithImgName:@"2" withlabText_1:@"谁又要结婚了？" withlabText_2:@"学校今天放假" withlabText_3:@"2016.10.4" withlabText_4:@"浏览量：999" withlabText_5:nil];
//    cell3.frame =CGRectMake(0, 202, SW, 100);
//    cell3.backgroundColor =kWhiteColor;
//    [sc addSubview:cell3];
//
//    
//    Mycell1 *cell4 =[[Mycell1 alloc]initWithImgName:@"3" withlabText_1:@"去什么地方玩呢" withlabText_2:@"成都重庆你更喜欢谁" withlabText_3:@"2016.10.5" withlabText_4:@"浏览量：999" withlabText_5:nil];
//    cell4.frame =CGRectMake(0, 303, SW, 100);
//    cell4.backgroundColor =kWhiteColor;
//    [sc addSubview:cell4];
//
//    
//    Mycell1 *cell5 =[[Mycell1 alloc]initWithImgName:@"4" withlabText_1:@"枪杆子子出政权" withlabText_2:@"胜者为王，败者为寇" withlabText_3:@"2016.10.7" withlabText_4:@"浏览量：999" withlabText_5:nil];
//    cell5.frame =CGRectMake(0, 404, SW, 80);
//    cell5.backgroundColor =kWhiteColor;
//    [sc addSubview:cell5];
//
//  
//
//    
//    [vc.view addSubview:sc];
//    [self.navigationController pushViewController:vc animated:YES];
//    self.modalTransitionStyle =UIModalTransitionStylePartialCurl;
    
    
}

-(void)reply{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)configSubview{
    
    
    UITableView *tab =[[UITableView alloc]initWithFrame:CGRectMake(0, 0,SW , SH-64) style:UITableViewStylePlain];
    [self.view addSubview:tab];
    tab.delegate =self;
    tab.dataSource =self;

    tab.backgroundColor =[UIColor colorWithRed:243/255.0 green:246/255.0 blue:249/255.0 alpha:1];
//    tab.scrollEnabled =NO;
    tab.separatorStyle = UITableViewCellSeparatorStyleNone;
    
       
    
}

#pragma mark --tableview的代理事件

//=============================


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class class =NSClassFromString(_cellArry[indexPath.section]);
    
    UITableViewCell *cell = [[class alloc]initWithImgName:@"002.gif" withlabText_1:@"test" withlabText_2:@"tsest" withlabText_3:@"test" withlabText_4:@"test" withlabText_5:@"teest"];
    
   
    return cell;
    
    
    }

    
//    UITableViewCell *cell =[[NSClassFromString([self.cellArry[indexPath.section]) alloc]initWithImgName:@"班级" withlabText_1:@"请各位家长注意，学校决定" withlabText_2:@"今天时国庆节，我没有回家，好命苦，在敲代码，看着大街上人来人往，还生羡慕我也是其中的一员。。。。。。。" withlabText_3:@"2016.10.1" withlabText_4:@"浏览量：999" withlabText_5:nil] ;

    
    
                                               
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;

}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 5;
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
