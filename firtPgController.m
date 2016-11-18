//
//  firtPgController.m
//  YXQ
//
//  Created by rwli on 16/9/30.
//  Copyright © 2016年 rwli. All rights reserved.
//



//1.图像圆边  layer.masksToBounds = YES
//2.自定义按钮的图标和文字排版   layoutSubviews去设置布局，不然得不到父视图的frame；
//通知栏的滚动视图 滚动视图上加的一个无限滚动





#import "firtPgController.h"
#import "Mycell1.h"
#import "Mycell2.h"
#import "Mycell_scrollview_cell.h"
#import "Mycell3.h"
#import "Mycell4.h"
#import "Mycell5.h"
#import "ShowMytransitionVC.h"

@interface firtPgController()
@property (strong,nonatomic)NSMutableArray *cellArry;
@end

@implementation firtPgController

-(void)viewDidLoad{
   
    [super viewDidLoad];
     _cellArry =[NSMutableArray arrayWithObjects:@"Mycell_scrollview_cell",@"Mycell2",@"Mycell3",@"Mycell4",@"Mycell5", nil];
  
    
    

    
    
     }




#pragma mark --tableview的代理事件

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class class =NSClassFromString(_cellArry[indexPath.section]);
    UITableViewCell *cell;
    
//    UITableViewCell *cell1 = [[class alloc]initWithImgName:@"班级" withlabText_1:@"请各位家长注意，学校决定" withlabText_2:@"今天时国庆节，我没有回家，好命苦，在敲代码，看着大街上人来人往，还生羡慕我也是其中的一员" withlabText_3:@"2016.10.1" withlabText_4:@"浏览量：999" withlabText_5:nil];
    if (!indexPath.section) {
        
        UITableViewCell *cell1 = [[class alloc]init];
         cell =cell1;
    }
    if (indexPath.section ==1) {
        UITableViewCell *cell2 = [[class alloc]initWithImgName:@"ring.gif" withlabText_1:@"陈老师" withlabText_2:@"88888888888" withlabText_3:nil   withlabText_4:nil withlabText_5:nil];
        cell =cell2;
    }
    if (indexPath.section==2) {
        Mycell3 *cell3 =[[Mycell3 alloc]init];
          cell =cell3;
    }
    if (indexPath.section ==3) {
        UITableViewCell *cell4 =[[Mycell4 alloc]init];
        cell =cell4;

    }
    if (indexPath.section==4) {
        Mycell5 *cell5 = [[Mycell5 alloc]init];
        cell =cell5;
        WeakSelf(weakself);
       [cell5 tapWithactionblock:^{
           
           ShowMytransitionVC *show =[[ShowMytransitionVC alloc]initWithanimatRect:CGRectMake(20, 510, 60, 60)];
           [weakself presentViewController:show animated:YES completion:nil];
       }];
    }
    
    

      
    
    return cell;
    
    
}


//    UITableViewCell *cell =[[NSClassFromString([self.cellArry[indexPath.section]) alloc]initWithImgName:@"班级" withlabText_1:@"请各位家长注意，学校决定" withlabText_2:@"今天时国庆节，我没有回家，好命苦，在敲代码，看着大街上人来人往，还生羡慕我也是其中的一员。。。。。。。" withlabText_3:@"2016.10.1" withlabText_4:@"浏览量：999" withlabText_5:nil] ;




-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section<2) {
        return 80  ;
    }
    else if (indexPath.section <4){
        return 150;
    }
       else{
        return 120;
    }
        
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    if (section ==4) {
        return 0;
    }else
        return 5;
}


@end
