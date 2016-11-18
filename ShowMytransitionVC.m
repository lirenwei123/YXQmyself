//
//  ShowMytransitionVC.m
//  YXQ
//
//  Created by rwli on 16/10/7.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "ShowMytransitionVC.h"

@interface ShowMytransitionVC ()

@end

@implementation ShowMytransitionVC
{
    CGRect priviteRect;
}

-(instancetype)initWithanimatRect:(CGRect)rect{
    self =[super init];
    if (self) {
        self.modalPresentationStyle =UIModalPresentationCustom;
        priviteRect =rect;
        self.transitioningDelegate =self;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
       self.view.backgroundColor =kGrayColor;
}


#pragma mark --delegate method

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [MyTransition transitionWith:MyTransitionTypePresent andrect:priviteRect];
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return [MyTransition transitionWith:MyTransitionTypeDismiss andrect:priviteRect];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self dismissViewControllerAnimated:YES completion:nil];
    UIAlertController *alert =[UIAlertController alertControllerWithTitle:@"test" message:@"test" preferredStyle:UIAlertControllerStyleAlert];
    WeakSelf(weakself);
    UIAlertAction *action =[UIAlertAction actionWithTitle:@"关闭" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [weakself dismissViewControllerAnimated:YES completion:nil];
    }];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
