//
//  myTabbarcontroller.m
//  YXQ
//
//  Created by rwli on 16/9/30.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "myTabbarcontroller.h"

#import "firtPgController.h"
#import "MyChirldController.h"
#import "PersonalCenterController.h"
#import "myNavigationcontroller.h"


@implementation myTabbarcontroller



-(void)viewDidLoad{
    
    
    NSMutableArray *classArry =[NSMutableArray arrayWithObjects:@"firtPgController",@"MyChirldController",@"PersonalCenterController", nil];
    
    for (int i=0; i<3; i++) {
        UIViewController *vc =[[NSClassFromString(classArry[i]) alloc]init];
        myNavigationcontroller *nav =[[myNavigationcontroller alloc]initWithRootViewController:vc];
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0 green:177/255.0 blue:230/255.0 alpha:1]];
        [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:kWhiteColor,NSFontAttributeName:[UIFont systemFontOfSize:20 ]}];
        
        switch (i) {
            case 0:
                vc.title =@"首页";
                vc.navigationItem.title =@"悦学圈";
                vc.tabBarItem.image =[UIImage imageNamed:@"icon_tab_home"];
                vc .tabBarItem.selectedImage =[UIImage imageNamed:@"icon_tab_home_press"];
                break;
            case 1:
                vc.title=vc.navigationItem.title=@"我的孩子";
                vc.tabBarItem.image =[UIImage imageNamed:@"icon_tab_me"];
                vc .tabBarItem.selectedImage =[UIImage imageNamed:@"icon_tab_me_press"];
                break;
            case 2:
               vc.title=vc.navigationItem.title=@"个人中心";
                vc.tabBarItem.image =[UIImage imageNamed:@"icon_tab_more"];
                vc .tabBarItem.selectedImage =[UIImage imageNamed:@"icon_tab_person_press"];
                break;

            default:
                break;
        }
        
        
        [self addChildViewController:nav];
        
           }
    
    
}

    
    

@end
