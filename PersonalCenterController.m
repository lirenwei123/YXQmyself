//
//  PersonalCenterController.m
//  YXQ
//
//  Created by rwli on 16/9/30.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "PersonalCenterController.h"


@interface PersonalCenterController ()

@end

@implementation PersonalCenterController

- (void)viewDidLoad {
    [super viewDidLoad];

    

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}


-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    if (section ==2) {
        return 0;
    }else
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
