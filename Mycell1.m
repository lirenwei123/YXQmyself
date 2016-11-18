//
//  Mycell1.m
//  YXQ
//
//  Created by rwli on 16/10/1.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "Mycell1.h"

@implementation Mycell1
//这是一个通知栏的cell  这是单个cell，显示通知栏一栏内容



{
    UIImageView *imgvin;
    UILabel *titleLablein;
    UILabel *contentLablein;
    UILabel *dateLablein;
    UILabel *replyLablein;
}

-(instancetype)initWithImgName:(NSString *)imgName withlabText_1:(NSString*)labText1 withlabText_2:(NSString*)labText2 withlabText_3:(NSString*)labText3 withlabText_4:(NSString*)labText4 withlabText_5:(NSString*)labText5{
    self =[super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    if (self) {
        
      
        
        
        
        UIImageView *imgv =[[UIImageView alloc]init];
        imgv.contentMode =UIViewContentModeScaleAspectFill;
        UILabel *titleLable = [[UILabel alloc]init];
        UILabel *contentLable =[[UILabel alloc]init];
        UILabel *dateLable = [[UILabel alloc]init];
        UILabel *replyLable = [[UILabel alloc]init];
        
        imgv.image =[[UIImage imageNamed:imgName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        titleLable.text =labText1 ;
        titleLable.font =[UIFont boldSystemFontOfSize:20];
        
        contentLable.text =labText2;
        contentLable.numberOfLines =2;
//        contentLable.textColor =kGrayColor;
        contentLable.font =[UIFont systemFontOfSize:12];
       
        dateLable.text =labText3;
        dateLable.textAlignment =NSTextAlignmentCenter;
        dateLable.font =[UIFont systemFontOfSize:8];
        dateLable.textColor =kGrayColor;
        
        replyLable.text =labText4;
        replyLable.font =[UIFont systemFontOfSize:8];
        replyLable.textAlignment =NSTextAlignmentCenter;
        replyLable.textColor =kGrayColor;
        
        [self.contentView addSubview:imgv];
        [self.contentView addSubview:titleLable];
        [self.contentView addSubview:contentLable];
        [self.contentView addSubview:dateLable];
        [self.contentView addSubview:replyLable];
        
        
        //这里是个坑， 不能添加imgvin,否则找不到superview。
        imgvin =imgv;
        titleLablein =titleLable;
        contentLablein =contentLable;
        dateLablein =dateLable;
        replyLablein =replyLable;
        
        
        
        
        [self setNeedsLayout];
        [self layoutIfNeeded];
    }
    
    return self;
}




-(void)layoutSubviews{
    //布局
    
    //关于offset   往右往下时正值   往左往上时负值
    
    
    WeakSelf(weakself);
    [imgvin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(weakself).offset(10);
     make.bottom.equalTo(weakself).offset(-10);  //----------这里是个坑
        make.width.equalTo(imgvin.mas_height);
    }];
    
    
    [titleLablein mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself);
        make.left.equalTo(imgvin.mas_right).offset(10);
        make.height.equalTo(weakself).multipliedBy(0.5);
        make.right.equalTo(dateLablein.mas_left).offset(5);
    }];
    
    [contentLablein mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(weakself);
        make.right.equalTo(weakself).offset(-5);
        make.left.equalTo(imgvin.mas_right).offset(10);
        make.height.equalTo(weakself).multipliedBy(0.6);
    }];
    
    [dateLablein mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakself);
        make.top.equalTo(weakself);
        make.height.equalTo(weakself).multipliedBy(0.5);
        make.width.equalTo(@50);
        
    }];
    [replyLablein mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.right.equalTo(weakself);
        make.height.equalTo(weakself).multipliedBy(0.3);
        make.width.equalTo(@50);
        make.right.equalTo(weakself).offset(-5);

        
    }];
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
