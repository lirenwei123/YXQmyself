//
//  MessageCenterListVC.m
//  YXQ
//
//  Created by rwli on 16/10/7.
//  Copyright © 2016年 rwli. All rights reserved.
//



#import "MessageCenterListVC.h"
#import "MessageCell.h"

@interface MessageCenterListVC ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *messageArry;
}
@end

@implementation MessageCenterListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   self.title =@"通知中心";
    UITableView *MessageTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SW, SH) style:UITableViewStylePlain];
    MessageTable.separatorStyle =UITableViewCellSeparatorStyleNone;
    
 
    MessageTable.delegate =self;
    MessageTable.dataSource =self;

    [self.view addSubview:MessageTable];
    
    
   
    
    
    NSString *fp =[[NSBundle mainBundle]pathForResource:@"Message PLIST" ofType:@"plist"];
    messageArry =[NSMutableArray arrayWithContentsOfFile:fp];

   
}

#pragma mark --uitable的代理事件

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return messageArry.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"message"];
    if (!cell) {
        
        NSDictionary *messageDic =messageArry [indexPath.row];
        cell =[[MessageCell alloc]initWithimg:[UIImage imageNamed:@"学校通知圆"] andtitle:messageDic[@"title"] andsubtitle:@"2016.10.7 17:00     温江二中教导处" andcontent:@"周二下午开会，请不要缺席周二下午开会，请不要缺席周二下午开会，请不要缺席周二下午开会，请不要缺席"];
        
    
        
        
//        switch (indexPath.section) {
//            case 0:
//                cell =[[MessageCell alloc]initWithimg:[UIImage imageNamed:@"学校通知圆"] andtitle:@"请各位家长注意，学校决定" andsubtitle:@"2016.10.7 17:00     温江二中教导处" andcontent:@"周二下午开会，请不要缺席周二下午开会，请不要缺席周二下午开会，请不要缺席周二下午开会，请不要缺席"];
//
//                break;
//            case 1:
//                 cell =[[MessageCell alloc]initWithimg:[UIImage imageNamed:@"学校通知圆"] andtitle:@"请各位家长注意，学校决定" andsubtitle:@"2016.10.7 17:00     温江二中教导处" andcontent:@"周二下午开会，请不要缺席周二下午开会，请不要缺席"];
//                
//                break;
//            case 2:
//                 cell =[[MessageCell alloc]initWithimg:[UIImage imageNamed:@"学校通知圆"] andtitle:@"请各位家长注意，学校决定" andsubtitle:@"2016.10.7 17:00     温江二中教导处" andcontent:@"周二下午开会，请不要缺席周二下午开会，请不要缺席"];
//                
//                break;
//            case 3:
//                 cell =[[MessageCell alloc]initWithimg:[UIImage imageNamed:@"学校通知圆"] andtitle:@"请各位家长注意，学校决定" andsubtitle:@"2016.10.7 17:00     温江二中教导处" andcontent:@"周二下午开会，请不要缺席"];
//                
//                break;
//            case 4:
//                 cell =[[MessageCell alloc]initWithimg:[UIImage imageNamed:@"学校通知圆"] andtitle:@"请各位家长注意，学校决定" andsubtitle:@"2016.10.7 17:00     温江二中教导处" andcontent:@"周二下午开会，请不要缺席"];
//                
//                break;
//
//            default:
//                break;
//        }
        
            }
    return cell;
}

-(NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath{
       
    UITableViewRowAction *dele =[UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
         //先删数据，再删cell
        [messageArry removeObjectAtIndex:indexPath.row];
//        [tableView reloadData];
        
        
        //此处也是坑，当row直有一个时会报错，所有只有在时多排的情况下使用
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:(UITableViewRowAnimationLeft)];
        [tableView setEditing:NO animated:YES];
    }];
    dele.backgroundColor =kRedColor;
    return @[dele];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
//-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
//    
//    NSMutableArray *arry =[NSMutableArray array];
//    [messageArry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [arry addObject:obj[@"title"]];
//    }];
//        return arry;
//    
//}



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
