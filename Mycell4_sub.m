//
//  Mycell4.m
//  YXQ
//
//  Created by rwli on 16/10/3.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "Mycell4_sub.h"
#import "H_View.h"

@implementation Mycell4_sub




-(instancetype)initWithkemu:(NSString *)kemu anstotoalScore:(NSString *)totalScore andtestScore:(NSString*)testScore andrank:(NSString*)rank andAverageScore:(NSString*)averrageScore andHighScore:(NSString*)highScore {

    self =[super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell0"];
    if (self) {
        
                   
        
        H_View *view1 =[[H_View alloc]initWithtitl:[NSString stringWithFormat:@"  最近一次%@考试",kemu] andsubTitle:[NSString stringWithFormat:@"总分： %@分",totalScore]];
        view1.lab1.textColor =[UIColor colorWithRed:92/255.0 green:193/255.0 blue:234/255.0 alpha:1];
        view1.lab1.font =[UIFont systemFontOfSize:16];
        view1.lab2.textColor  =kGrayColor;
        view1.lab2.font =[UIFont systemFontOfSize:13];
            view1.tag=1;
            view1.frame =CGRectMake(10, 7, 300, 40);
        
        H_View *view2 =[[H_View alloc]initWithtitl:@"班级排名" andsubTitle:rank];
        view2.lab1.textColor =kGrayColor;
        view2.lab1.textAlignment=NSTextAlignmentCenter;
        view2.lab1.font =[UIFont systemFontOfSize:13];
        view2.lab2.font =[UIFont systemFontOfSize:13];
        view2.lab2.textColor =[UIColor colorWithRed:0 green:176/255.0 blue:160/255.0 alpha:1];
         view2.lab2.textAlignment=NSTextAlignmentCenter;
            view2.tag=2;
            view2.frame =CGRectMake(0, 80, (SW-20)/3, 40);
        
        H_View *view3 =[[H_View alloc]initWithtitl:@"班级平均分" andsubTitle:averrageScore];
        view3.lab1.textColor =kGrayColor;
        view3.lab1.font =[UIFont systemFontOfSize:13];
         view3.lab1.textAlignment=NSTextAlignmentCenter;
        view3.lab2.font =[UIFont systemFontOfSize:13];
        view3.lab2.textColor =[UIColor colorWithRed:0 green:176/255.0 blue:160/255.0 alpha:1];
         view3.lab2.textAlignment=NSTextAlignmentCenter;
            view3.tag=3;
            view3.frame =CGRectMake((SW-20)/3, 80, (SW-20)/3, 40);

        H_View *view4 =[[H_View alloc]initWithtitl:@"班级最高分" andsubTitle:highScore];
        view4.lab1.textColor  =kGrayColor;
        view4.lab1.font =[UIFont systemFontOfSize:13];
         view4.lab1.textAlignment=NSTextAlignmentCenter;
        view4.lab2.font =[UIFont systemFontOfSize:13];
        view4.lab2.textColor =[UIColor colorWithRed:0 green:176/255.0 blue:160/255.0 alpha:1];
         view4.lab2.textAlignment=NSTextAlignmentCenter;
            view4.tag =4;
            view4.frame =CGRectMake((SW-20)/3*2, 80, (SW-20)/3, 40);

        
        UILabel *fenshu =[[UILabel alloc]init];
            fenshu.text =[NSString stringWithFormat:@"%@分",testScore];
        fenshu.textAlignment =NSTextAlignmentCenter ;
        fenshu.font =[UIFont systemFontOfSize:30];
        fenshu.textColor =[UIColor colorWithRed:0 green:176/255.0 blue:160/255.0 alpha:1];
            fenshu.tag =5;
            fenshu.frame =CGRectMake(0, 40, SW-20, 35);
            
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeSystem];
        [btn setImage:[[UIImage imageNamed:@"New"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btn.tag =6;
            btn.frame =CGRectMake(SW-20-40, 0, 40, 40);
        
        
        //这里的不同呢如果上面还加了一层view,那么他的touch和addtaget属性久失效了；；；；；
        
        
        
        
        
        
            UIView *line1 =[[UIView alloc]initWithFrame:CGRectMake(5, 4, 3, 3)];
            line1.backgroundColor =kBlueColor;
            line1 .tag =7;
            line1.frame =CGRectMake(10, 10, 3, 20);
            
            UIView *line2 =[[UIView alloc]initWithFrame:CGRectMake(0, 1, SW-20, 1)];
            UIView *line3 =[[UIView alloc]initWithFrame:CGRectMake(0, 80, SW-20, 1)];
            UIView *line4 =[[UIView alloc]initWithFrame:CGRectMake(0, 119, SW-20, 1)];
            UIView *line5 =[[UIView alloc]initWithFrame:CGRectMake(1, 0, 1, 120)];
            UIView *line6 =[[UIView alloc]initWithFrame:CGRectMake(0, 81, SW-20, 1)];
            UIView *line7 =[[UIView alloc]initWithFrame:CGRectMake(SW-21, 0, 1, 120)];
            UIView *line8 =[[UIView alloc]initWithFrame:CGRectMake((SW-20)/3, 90, 1, 20)];
            UIView *line9 =[[UIView alloc]initWithFrame:CGRectMake((SW-20)/3*2, 90, 1, 20)];
        
        
            line2.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line3.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line4.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line5.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line6.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line7.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line8.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line9.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            
            
       
          
            [self.contentView addSubview:view1];
            [self.contentView addSubview:view2];
            [self.contentView addSubview:view3];
             [self.contentView addSubview:view4];
            [self.contentView addSubview:fenshu];
            [self.contentView addSubview:btn];
            [self.contentView addSubview:line1];
            [self.contentView addSubview:line2];
            [self.contentView addSubview:line3];
            [self.contentView addSubview:line4];
            [self.contentView addSubview:line5];
            [self.contentView addSubview:line6];
            [self.contentView addSubview:line7];
            [self.contentView addSubview:line8];
            [self.contentView addSubview:line9];
            
            
            
        
       
        
        
        
        [btn addTarget:self action:@selector(newaction) forControlEvents:UIControlEventTouchUpInside];
      
        [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(gun) userInfo:nil repeats:YES];
        
//        ／／／／／／／／／／／／／／／／／／／／／／／／／／／／
//        [self.contentView addSubview:btnin];
//        ／／／／／／／／／／／／／／／／／／／／／／
    }
    return self;
}

-(void)gun{
    
    UIScrollView *sc =[self.contentView viewWithTag:10];
    CGPoint pre =sc.contentOffset;
    CGPoint current =CGPointMake(pre.x+SW-20, pre.y);
    NSInteger beishu =pre.x/(SW-20);
    if (beishu>=3) {
        current =CGPointMake(0, 0);
    }
    [sc setContentOffset:current animated:YES];
    
}

-(void)newaction{
    
    NSLog(@"new------");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch le ");
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
