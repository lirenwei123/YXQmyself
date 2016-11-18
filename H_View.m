//
//  ScoreView.m
//  YXQ
//
//  Created by rwli on 16/10/3.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "H_View.h"

@implementation H_View

@synthesize lab1;
@synthesize lab2;

-(instancetype)initWithtitl:(NSString*)title andsubTitle:(NSString*)subTitle {
    if(![super init]) return nil;
    else{
        lab1 =[[UILabel alloc]init];
        lab1.text =title;
        
        
        
        lab2 =[[UILabel alloc]init];
        lab2.text =subTitle;
                
     
        
        [self addSubview:lab1];
        [self addSubview:lab2];
        
        WeakSelf(weakself);
        [lab1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.equalTo(weakself);
            make.height.equalTo(weakself.mas_height).dividedBy(2);
        }];
        
        [lab2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.left.right.equalTo(weakself);
            make.height.equalTo(weakself.mas_height).multipliedBy(0.5);
        }];
        
        
        [self setNeedsLayout];
        [self layoutIfNeeded];
        
        
        
        return self;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


@end
