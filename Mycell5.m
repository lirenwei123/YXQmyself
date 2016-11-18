//
//  Mycell5.m
//  YXQ
//
//  Created by rwli on 16/10/3.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "Mycell5.h"
#import "ShowMytransitionVC.h"

@implementation Mycell5
{
    actionblock inblock;
}



-(instancetype)init{
    self =[super init];
    if (self) {
        
        UIView *deyu =[[UIView alloc]initWithFrame:CGRectMake(20, 30, 60, 60)];
        UIImage *img =[[UIImage imageNamed:@"德育图"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *img1 =[[UIImage imageNamed:@"哭"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        UIImage *img2 =[[UIImage imageNamed:@"笑"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        

        UIImageView *imgv =[[UIImageView alloc]initWithImage:img];
        imgv.frame =CGRectMake(0, 0, 60, 60);
        [deyu addSubview:imgv];
        UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapdo)];
        [deyu addGestureRecognizer:tap];
        
        
        UIImageView *imgv1 =[[UIImageView alloc]initWithImage:img1];
        imgv1.frame =CGRectMake(110, 45, 30, 30);
        UIImageView *imgv2 =[[UIImageView alloc]initWithImage:img2];
        imgv2.frame =CGRectMake((SW-110)/3+110, 45, 30, 30);
        UIImageView *imgv3 =[[UIImageView alloc]initWithImage:img1];
        imgv3.frame =CGRectMake((SW-110)/3*2+110, 45, 30, 30);
        
        UIView *line1 =[[UIView alloc]init];
        line1.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
        line1.frame =CGRectMake(110, 60, SH-110, 2);
        [self.contentView addSubview:line1];
        
        for (int i=0; i<3; i++) {
            UIView *line =[[UIView alloc]init];
            line.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];
            line.frame =CGRectMake(85+10*i, 60, 2, 2);
            [self.contentView addSubview:line];
            
        }
        
        [self.contentView addSubview:deyu];
        [self.contentView addSubview:imgv1];
        [self.contentView addSubview:imgv2];
        [self.contentView addSubview:imgv3];
        
        
        //日期
        UILabel *date =[[UILabel alloc]init];
        date.text =@"06-03";
        date.textColor =kGrayColor;
        date.frame =CGRectMake(95, 80, 60, 15);
        date.textAlignment =NSTextAlignmentCenter;
        date.font =[UIFont systemFontOfSize:10];
        [self.contentView addSubview:date];
        
        UILabel *date1 =[[UILabel alloc]init];
        date1.text =@"06-03";
        date1.textColor =kGrayColor;
        date1.frame =CGRectMake((SW-110)/3+95, 25, 60, 15);
        date1.textAlignment =NSTextAlignmentCenter;
         date1.font =[UIFont systemFontOfSize:10];
        [self.contentView addSubview:date1];

        UILabel *date2 =[[UILabel alloc]init];
        date2.text =@"06-03";
        date2.textColor =kGrayColor;
        date2.frame =CGRectMake((SW-110)/3*2+95, 80, 60, 15);
        date2.textAlignment =NSTextAlignmentCenter;
         date2.font =[UIFont systemFontOfSize:10];
        [self.contentView addSubview:date2];

        
        
        
    }
    return self;
}

-(void)tapWithactionblock:(actionblock)block{
    inblock =block;
}
-(void)tapdo{
    if (inblock) {
        inblock();
    }
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
