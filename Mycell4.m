//
//  Mycell4.m
//  YXQ
//
//  Created by rwli on 16/10/3.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "Mycell4.h"
#import "Mycell4_sub.h"


@implementation Mycell4


-(instancetype)init{
    if(![super init]) return nil;
    else{
        
        UIScrollView *sc =[[UIScrollView alloc]initWithFrame:CGRectMake(10, 10, SW-20, 120)];
        sc.contentSize =CGSizeMake((SW-20)*4, 120);
        sc.pagingEnabled =YES;
        sc.tag =10;
        
        
        
        
        
        Mycell4_sub *cell1 =[[Mycell4_sub alloc]initWithkemu:@"语文" anstotoalScore:@"150" andtestScore:@"143" andrank:@"1" andAverageScore:@"130" andHighScore:@"143"];
        cell1.frame =CGRectMake(0, 0, SW-20, 120);
        
            
           Mycell4_sub *cell2 =[[Mycell4_sub alloc]initWithkemu:@"数学" anstotoalScore:@"150" andtestScore:@"149" andrank:@"1" andAverageScore:@"130" andHighScore:@"149"];
        cell2.frame =CGRectMake(SW-20, 0, SW-20, 120);
        
         Mycell4_sub *cell3 =[[Mycell4_sub alloc]initWithkemu:@"英语" anstotoalScore:@"150" andtestScore:@"139" andrank:@"3" andAverageScore:@"130" andHighScore:@"148"];
        cell3.frame =CGRectMake((SW-20)*2, 0, SW-20, 120);
        
         Mycell4_sub *cell4 =[[Mycell4_sub alloc]initWithkemu:@"理科综合" anstotoalScore:@"300" andtestScore:@"290" andrank:@"1" andAverageScore:@"250" andHighScore:@"290"];
        cell4.frame =CGRectMake((SW-20)*3, 0, SW-20, 120);
        
        
        
        
        [sc addSubview:cell1];
        [sc addSubview:cell2];
        [sc addSubview:cell3];
        [sc addSubview:cell4];
        
        UIPageControl *Page =[[UIPageControl alloc]initWithFrame:CGRectMake(115, 130, 100, 20)];
        Page.numberOfPages =4;
        Page.currentPageIndicatorTintColor =kGreenColor;
        Page.pageIndicatorTintColor =kRedColor;
        Page.tag =11;
        
        
            
        [self.contentView addSubview:sc];
        [self.contentView addSubview:Page];
      
        
        [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(gun) userInfo:nil repeats:YES];
    }
    return self;
}

    
    
    
-(void)gun{
        
        UIScrollView *sc =[self.contentView viewWithTag:10];
        CGPoint pre =sc.contentOffset;
        CGPoint current =CGPointMake(pre.x+SW-20, pre.y);
        NSInteger beishu =pre.x/(SW-20);
    
     UIPageControl *page =[self.contentView viewWithTag:11];
   
        if (beishu>=3) {
            current =CGPointMake(0, 0);
            page.currentPage =0;
        }
        else{
       page.currentPage =beishu+1;
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
