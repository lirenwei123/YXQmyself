//
//  MyBtn.m
//  YXQ
//
//  Created by rwli on 16/10/2.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "MyBtn.h"


@implementation MyBtn
{
    btnActionBlock myBlock;
    UILabel *lablein;
    UIImageView *imgvin;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithimg:(UIImage *)img andtitle:(NSString *)title andrect:(CGRect) rect  withaction:(btnActionBlock)actionBlock{
    self =[super initWithFrame:rect];
    if (self) {
       
        myBlock =actionBlock;
        
       
        
        UILabel *lable =[[UILabel alloc]init];
        lable.text =title;
        lable.textAlignment=NSTextAlignmentCenter;
        lable.font =[UIFont systemFontOfSize:12];
      
        
        [self addSubview:lable];
        
        UIImageView *imgv =[[UIImageView alloc]initWithImage:img];
        [self addSubview:imgv];
 
        
        imgvin =imgv;
        lablein =lable;
        
    }
    return self;
}

-(void)layoutSubviews{
    WeakSelf(weakself);
    [imgvin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself).offset(15);
        make.height.equalTo(weakself).multipliedBy(0.3);
        make.width.equalTo(imgvin.mas_height);
        make.left.equalTo(weakself).offset(weakself.frame.size.width*0.35);
    }];
    
    [lablein mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imgvin.mas_bottom);
        make.left.right.equalTo(weakself);
        make.bottom.equalTo(weakself).offset(-15);
    }];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (myBlock ) {
        myBlock(self);
    }
    
}
@end
