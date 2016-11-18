//
//  MyChirldController.m
//  YXQ
//
//  Created by rwli on 16/9/30.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "MyChirldController.h"


@interface MyChirldController ()

@end

@implementation MyChirldController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    /**
     *  webview的toucj事件哪去了？
     *  cell 右边增加删除增加等选项
     
     *  @param NSInteger <#NSInteger description#>
     *
     *  @return <#return value description#>
     */
    
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;

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
