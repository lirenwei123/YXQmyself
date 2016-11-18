//
//  Mycell3.m
//  YXQ
//
//  Created by rwli on 16/10/2.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "Mycell3.h"

@implementation Mycell3



-(instancetype)init{
    
if (![super init])   return nil;
    else{
     
        [self configSubviews];
        [self setNeedsLayout];
        [self layoutIfNeeded];
        
        
    }
    return self;
}


-(void)configSubviews{
    UIImage *img1 =[[UIImage imageNamed:@"icon_figure"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn1 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn1 setImage:img1 forState:UIControlStateNormal];
    [_btn1 setTitle:@"李仁伟打卡记录" forState:UIControlStateNormal];
    _btn1.tintColor =kBlackColor;
    _btn1.titleLabel.font =[UIFont systemFontOfSize:17];
    
    UIImage *img2 =[[UIImage imageNamed:@"icon_big_abnormal-1"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn2 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn2 setImage:img2 forState:UIControlStateNormal];
    [_btn2 setTitle:@"打卡异常" forState:UIControlStateNormal];
    _btn2.titleLabel.font =[UIFont systemFontOfSize:10];
    _btn2.tintColor =kGrayColor;
    
    
    UIImage *img3 =[[UIImage imageNamed:@"icon_big_normal" ]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn3 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn3 setImage:img3 forState:UIControlStateNormal];
    [_btn3 setTitle:@"打卡正常" forState:UIControlStateNormal];
    _btn3.titleLabel.font =[UIFont systemFontOfSize:10];
    _btn3.tintColor =kGrayColor;
    
    UIImage *img4 =[[UIImage imageNamed:@"icon_in_school" ]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn4 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn4 setImage:img4 forState:UIControlStateNormal];
    [_btn4 setTitle:@"进校 09:30" forState:UIControlStateNormal];
    _btn4.titleLabel.font =[UIFont systemFontOfSize:15];
    _btn4.tintColor =kBlackColor;

    
    UIImage *img5 =[[UIImage imageNamed:@"icon_big_abnormal-1" ]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn5 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn5 setImage:img5 forState:UIControlStateNormal];
    [_btn5 setTitle:@"迟到" forState:UIControlStateNormal];
    _btn5.titleLabel.font =[UIFont systemFontOfSize:13];
    _btn5.tintColor =kGrayColor;
    _btn5.contentMode =UIViewContentModeScaleAspectFill;
    
    
    UIImage *img6 =[[UIImage imageNamed:@"icon_out_school"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn6 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn6 setImage:img6 forState:UIControlStateNormal];
    [_btn6 setTitle:@"出校 17:00" forState:UIControlStateNormal];
    _btn6.titleLabel.font =[UIFont systemFontOfSize:15];
    _btn6.tintColor =kBlackColor;

    
    UIImage *img7 =[[UIImage imageNamed:@"icon_big_normal"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _btn7 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn7 setImage:img7 forState:UIControlStateNormal];
    
    _btn8 =[UIButton buttonWithType:UIButtonTypeSystem];
    [_btn8 setTitle:@"更多打卡记录" forState:UIControlStateNormal];
    _btn8.backgroundColor =[UIColor colorWithRed:243/255.0 green:252/255.0 blue:253/255.0 alpha:1];
    [_btn8 setTitleColor:[UIColor colorWithRed:112/255.0 green:199/255.0 blue:236/255.0 alpha:1] forState:UIControlStateNormal];
    
    [_btn8 addTarget:self action:@selector(more) forControlEvents:UIControlEventTouchUpInside];

    
    
    [self.contentView addSubview:_btn1];
    [self.contentView addSubview:_btn2];
    [self.contentView addSubview:_btn3];
    [self.contentView addSubview:_btn4];
    [self.contentView addSubview:_btn5];
    [self.contentView addSubview:_btn6];
    [self.contentView addSubview:_btn7];
    [self.contentView addSubview:_btn8];
    
    //画线
    for (int i=0; i<4; i++) {
        UIView *line =[[UIView alloc]init];
        line.tag =i+1;
        [self.contentView addSubview:line];
        line.backgroundColor =[UIColor colorWithRed:238/255.0 green:239/255.0 blue:240/255.0 alpha:1];

    }
}

-(void)more{
    NSLog(@"更多打卡记录响应事件code inh here");
}
-(void)updateConstraints{
    [super updateConstraints];
    WeakSelf(weakself);
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(weakself);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.4);
    }];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.2);
        make.right.equalTo(_btn3.mas_left);
    }];

    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.equalTo(weakself);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.2);
    }];

    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_btn1.mas_bottom);
        make.left.equalTo(weakself);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.4);
    }];

    [_btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_btn3.mas_bottom);
        make.right.equalTo(weakself).offset(-10);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.2);
    }];
    
    //设置btn的图片和内容布局
    
    
    
    
    /**
     *  这里设置了好久，TOP TIGHT,BOTOOM的offset有了，但是left的没有这事对，导致出来的不是正方形。
     *
     *  @param make <#make description#>
     *
     *  @return <#return value description#>
     */
    
    [_btn5.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_btn5).offset(8);
        make.right.equalTo(_btn5).offset(-22);
        make.bottom.equalTo(_btn5).offset(-8);
        make.left.equalTo(_btn5.titleLabel.mas_right).offset(10);
        
    }];
    

    _btn5.titleLabel.textAlignment =NSTextAlignmentCenter;
    [_btn5.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.equalTo(_btn5);
        make.width.equalTo(_btn5.mas_width).dividedBy(2);
    }];
    

    

    [_btn6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakself);
        make.top.equalTo(_btn4.mas_bottom);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.4);
    }];

    [_btn7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakself);
        make.top.equalTo(_btn5.mas_bottom);
        make.height.equalTo(weakself).dividedBy(4);
        make.width.equalTo(weakself).multipliedBy(0.1);
    }];

    [_btn8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(weakself);
        make.top.equalTo(_btn6.mas_bottom);
    }];

     for (int i=1; i<5; i++) {
         UIView *v =[self.contentView viewWithTag:i];
         if (i==2) {
             v.frame =CGRectMake(10,self.frame.size.height*0.25*i-1, self.frame.size.width-20, 1);
         }
         else{
         v.frame =CGRectMake(0,self.frame.size.height*0.25*i-1, self.frame.size.width, 1);
         }
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
