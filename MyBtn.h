//
//  MyBtn.h
//  YXQ
//
//  Created by rwli on 16/10/2.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^btnActionBlock)(UIView * sender);

@interface MyBtn : UIView
-(instancetype)initWithimg:(UIImage *)img andtitle:(NSString *)title andrect:(CGRect)rect withaction:(btnActionBlock)actionBlock;
@end
