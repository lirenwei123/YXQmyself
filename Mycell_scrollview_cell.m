//
//  Mycell_scrollview_cell.m
//  YXQ
//
//  Created by rwli on 16/10/2.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "Mycell_scrollview_cell.h"
#import "Mycell1.h"

@implementation Mycell_scrollview_cell


//把通知栏滚动起来的一个cell；

-(instancetype)init{
    self =[super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell0"];
    if (self) {
       
        UIScrollView *sc =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, SW, 80)];
        sc.contentSize =CGSizeMake(SW, 80*5);
        sc.pagingEnabled =YES;
        sc.tag =10;
        
        
            Mycell1 *cell1 =[[Mycell1 alloc]initWithImgName:@"班级" withlabText_1:@"请各位家长注意，学校决定" withlabText_2:@"今天时国庆节，我没有回家，好命苦，在敲代码，看着大街上人来人往，还生羡慕我也是其中的一员" withlabText_3:@"2016.10.1" withlabText_4:@"浏览量：999" withlabText_5:nil];
            cell1.frame =CGRectMake(0, 0, SW, 80);
            [sc addSubview:cell1];
        
        Mycell1 *cell2 =[[Mycell1 alloc]initWithImgName:@"1" withlabText_1:@"国庆节快乐～" withlabText_2:@"吃饭了吗。。。" withlabText_3:@"2016.10.3" withlabText_4:@"浏览量：999" withlabText_5:nil];
        cell2.frame =CGRectMake(0, 80, SW, 80);
        
        Mycell1 *cell3 =[[Mycell1 alloc]initWithImgName:@"2" withlabText_1:@"谁又要结婚了？" withlabText_2:@"学校今天放假" withlabText_3:@"2016.10.4" withlabText_4:@"浏览量：999" withlabText_5:nil];
        cell3.frame =CGRectMake(0, 160, SW, 80);
        
        Mycell1 *cell4 =[[Mycell1 alloc]initWithImgName:@"3" withlabText_1:@"去什么地方玩呢" withlabText_2:@"成都重庆你更喜欢谁" withlabText_3:@"2016.10.5" withlabText_4:@"浏览量：999" withlabText_5:nil];
        cell4.frame =CGRectMake(0, 240, SW, 80);
        
        Mycell1 *cell5 =[[Mycell1 alloc]initWithImgName:@"4" withlabText_1:@"枪杆子子出政权" withlabText_2:@"胜者为王，败者为寇" withlabText_3:@"2016.10.7" withlabText_4:@"浏览量：999" withlabText_5:nil];
        cell5.frame =CGRectMake(0, 320, SW, 80);

        [sc addSubview:cell1];
        [sc addSubview:cell2];
        [sc addSubview:cell3];
        [sc addSubview:cell4];
        [sc addSubview:cell5];
     
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(gun) userInfo:nil repeats:YES];
      
        [self.contentView addSubview:sc];
}
    
    return self;
}

-(void)gun{

    UIScrollView *sc =[self.contentView viewWithTag:10];
    CGPoint pre =sc.contentOffset;
    CGPoint current =CGPointMake(pre.x, pre.y+80);
    NSInteger beishu =pre.y/80;
    if (beishu>=4) {
        current =CGPointMake(0, 0);
    }
    [sc setContentOffset:current animated:YES];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
