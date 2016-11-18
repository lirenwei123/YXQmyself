//
//  ScoreView.h
//  YXQ
//
//  Created by rwli on 16/10/3.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface H_View : UIView


@property (strong,nonatomic)UILabel *lab1;
@property (strong,nonatomic)UILabel *lab2;


-(instancetype)initWithtitl:(NSString*)title andsubTitle:(NSString*)subTitle;

@end
