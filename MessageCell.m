//
//  MessageCell.m
//  YXQ
//
//  Created by rwli on 16/10/7.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "MessageCell.h"

@implementation MessageCell


-(instancetype)initWithimg:(UIImage *)img andtitle:(NSString *)title andsubtitle:(NSString *)subtitle andcontent:(NSString *)content{
    self=[super init];
    if (self) {
        UIImageView *imgv =[[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
        imgv.layer.cornerRadius =20;
        imgv.layer.masksToBounds =YES;
        imgv.image =img;
        
        UILabel *titleLable =[[UILabel alloc]initWithFrame:CGRectMake(70, 0, SW-100, 25)];
        titleLable.text =title;
        titleLable.font =[UIFont boldSystemFontOfSize:20];
        
        UILabel *subLable =[[UILabel alloc]initWithFrame:CGRectMake(70, 25, SW-100, 25)];
        subLable.text =subtitle;
        subLable.font =[UIFont systemFontOfSize:15];
        subLable.textColor =kLightGrayColor;
        
        UILabel *contentLable =[[UILabel alloc]initWithFrame:CGRectMake(70, 50, SW-100, 50)];
        contentLable.text =content;
        contentLable.font =[UIFont systemFontOfSize:16];
        contentLable.numberOfLines =2;
        contentLable.textColor =kGrayColor;
        
        UIView *v =[[UIView alloc]initWithFrame:CGRectMake(0, 100, SW ,1)];
            v.backgroundColor =kLightGrayColor;
        
      

        
               
        [self addSubview:imgv];
        [self addSubview:titleLable];
        [self addSubview:subLable];
        [self addSubview:contentLable];
        [self.contentView addSubview:v];
        
        self.accessoryType =UITableViewCellAccessoryDisclosureIndicator;
        
        
    }
    return self;
}

-(void)ges{
    NSLog(@"access手势");
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
