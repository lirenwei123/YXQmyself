//
//  MyTransition.m
//  YXQ
//
//  Created by rwli on 16/10/7.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "MyTransition.h"

@implementation MyTransition
{
    MyTransitionType intype;
    CGRect inrect;
}
-(instancetype)initWith:(MyTransitionType)type andrect:(CGRect)rect{
    self =[super init];
    if (self) {
        intype =type;
        inrect =rect;
    }
    return self;
}
+(instancetype)transitionWith:(MyTransitionType)type andrect:(CGRect)rect{
    return [[self alloc]initWith:type andrect:rect];
}


#pragma mark --delegate method

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return  intype ==MyTransitionTypePresent?0.8:0.4;
}
-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    switch (intype) {
        case MyTransitionTypePresent:
            [self performAnimasitionPresrnt:transitionContext];
            break;
        case  MyTransitionTypeDismiss:
            [self performAnimasitionDidmiss:transitionContext];
            break;
  
        default:
            break;
    }
    
}
-(void)performAnimasitionPresrnt:(id<UIViewControllerContextTransitioning>)contex{
    UIViewController *fromVC =[contex viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC =[contex viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *contentV = [contex containerView];
    UIView *snapshort =[fromVC.view snapshotViewAfterScreenUpdates:NO ];
    snapshort.frame =fromVC.view.frame;
    snapshort.tag =10;
    toVC.view.frame =inrect;
    fromVC.view.hidden =YES;
    [contentV addSubview:snapshort];
    [contentV addSubview:toVC.view];
    
    [UIView animateWithDuration:[self transitionDuration:contex] animations:^{
        toVC.view.frame =CGRectMake(0, (SH-SW)/2, SW, SW);
        snapshort.transform =CGAffineTransformMakeScale(0.9, 0.9);
        
    } completion:^(BOOL finished) {
        [contex completeTransition:YES];
    }];
    
}
-(void)performAnimasitionDidmiss:(id<UIViewControllerContextTransitioning>)contex{
    UIViewController *fromVC =[contex viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC =[contex viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *contentV = [contex containerView];
    
    UIView *view =[contentV viewWithTag:10];

    [UIView animateWithDuration:[self transitionDuration:contex] animations:^{
        fromVC.view.transform =CGAffineTransformIdentity;
        view.transform =CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [contex completeTransition:YES];
        toVC.view.hidden =NO;
       [view removeFromSuperview];
    }];
    
}

@end
