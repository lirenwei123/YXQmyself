//
//  myCell.m
//  Mytable_extern
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 wyzc_lrw. All rights reserved.
//

#import "Mycell2.h"
#import "MyBtn.h"

@implementation Mycell2

{
  UIImageView*  imgvin ;
   UILabel* lable1in;
   UILabel* lable3in;
   UILabel* lable2in;
    MyBtn *btn1in;
    MyBtn *btn2in;
 
}



-(instancetype)initWithImgName:(NSString *)imgName withlabText_1:(NSString*)labText1 withlabText_2:(NSString*)labText2 withlabText_3:(NSString*)labText3 withlabText_4:(NSString*)labText4 withlabText_5:(NSString*)labText5{

    self =[super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
    if (self) {
        //header picture
        
        
        
        
        UIImageView *imgv =[[UIImageView alloc]init];
        imgv.contentMode = UIViewContentModeScaleToFill;
        imgv.image =[[UIImage imageNamed:imgName ]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
        imgv.layer.cornerRadius =30;
        imgv.layer.masksToBounds =YES;
        
        imgv.backgroundColor =[UIColor grayColor];
        [self.contentView addSubview:imgv];
        
        //teacher
        UILabel *lable1 =[[UILabel alloc]init];
        lable1.text =labText1;
        lable1.font =[UIFont systemFontOfSize:18];
        [self.contentView addSubview:lable1];
        
        //班主任
        
        UILabel *lable2 =[[UILabel alloc]init];
        lable2.text =@"班主任";
        lable2.font =[UIFont systemFontOfSize:12];
        lable2.textColor =kGrayColor;
        lable2.textAlignment =NSTextAlignmentRight;
        [self.contentView addSubview:lable2];

        

        //tel num.
        
        UILabel *lable3 =[[UILabel alloc]init];
        lable3.text =labText2;
        lable3.font =[UIFont systemFontOfSize:18];
        lable3.textColor =[UIColor colorWithRed:0 green:176/255.0 blue:160/255.0 alpha:1];
        [self.contentView addSubview:lable3];
        
       //leave btn
        
       
    
        MyBtn *btn1 =[[MyBtn alloc]initWithimg:[[UIImage imageNamed:@"请假-圆"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ] andtitle:@"在线请假" andrect:CGRectMake(250 , 0, 80, 80)   withaction:^(UIView *sender) {
            
                        NSLog(@"在线请假");
            
        }];
  
        
        [self.contentView addSubview:btn1];

        
        
        //callTEacher btn
     
        MyBtn *btn2 =[[MyBtn alloc]initWithimg:[[UIImage imageNamed:@"联系"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ] andtitle:@"联系老师" andrect:CGRectMake(330 , 0, 80, 80)withaction:^(UIView *sender) {
            NSLog(@"联系老师");
        }];

       
        [self.contentView addSubview:btn2];
        
        
        //传入指针
       
        imgvin = imgv;
        lable1in =lable1;
        lable2in =lable2;
        lable3in =lable3;
        btn1in =btn1;
        btn2in =btn2;
        
        //布局
        [self setNeedsLayout];
        [self layoutIfNeeded];

    }
    return self;
}

-(void)layoutSubviews{
    //布局
    WeakSelf(weakself);
    [imgvin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(weakself).offset(10);
        make.bottom.equalTo(weakself).offset(-10);
        make.width.equalTo(imgvin.mas_height);
    }];
    
    [lable1in mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imgvin.mas_right).offset(10);
        make.height.equalTo(imgvin.mas_height).multipliedBy(0.5);
        make.width.equalTo(imgvin.mas_height);
        make.top.equalTo(weakself).offset(10);
        make.width.equalTo(imgvin.mas_height);
    }];
    
    [lable2in mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lable1in.mas_right).offset(3);
        make.top.equalTo(weakself).offset(10);
        make.height.equalTo(imgvin.mas_height).multipliedBy(0.5);
        
    }];
    
    [lable3in mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(weakself).multipliedBy(0.3);
        make.top.equalTo(lable1in.mas_bottom);
        make.left.equalTo(imgvin.mas_right).offset(10);
        make.width.equalTo(lable1in.mas_width).multipliedBy(3);
        
        
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
