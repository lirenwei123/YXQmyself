//
//  MyTransition.h
//  YXQ
//
//  Created by rwli on 16/10/7.
//  Copyright © 2016年 rwli. All rights reserved.
//



#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger ,MyTransitionType){
    MyTransitionTypePresent=0,
    MyTransitionTypeDismiss,
};

@interface MyTransition : NSObject<UIViewControllerAnimatedTransitioning>

-(instancetype)initWith:(MyTransitionType)type andrect:(CGRect)rect;
+(instancetype)transitionWith:(MyTransitionType)type andrect:(CGRect)rect;

@end
