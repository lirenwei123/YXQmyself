//
//  MessageCell.h
//  YXQ
//
//  Created by rwli on 16/10/7.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageCell : UITableViewCell
-(instancetype)initWithimg:(UIImage *)img andtitle:(NSString *)title andsubtitle:(NSString *)subtitle andcontent:(NSString *)content;
@end
