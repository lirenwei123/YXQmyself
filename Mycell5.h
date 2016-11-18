//
//  Mycell5.h
//  YXQ
//
//  Created by rwli on 16/10/3.
//  Copyright © 2016年 rwli. All rights reserved.
//


typedef void(^actionblock)();
#import <UIKit/UIKit.h>

@interface Mycell5 : UITableViewCell

-(void)tapWithactionblock:(actionblock)block;
@end
