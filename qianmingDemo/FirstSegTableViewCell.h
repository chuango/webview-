//
//  FirstSegTableViewCell.h
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/13.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstSegTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *certiferType;
@property (weak, nonatomic) IBOutlet UILabel *profession;
@property (weak, nonatomic) IBOutlet UILabel *workPlace;
@property (weak, nonatomic) IBOutlet UILabel *emailPlace;
@property (weak, nonatomic) IBOutlet UILabel *tellPlace;
@property (weak, nonatomic) IBOutlet UILabel *identiyCardNumber;
@property (weak, nonatomic) IBOutlet UILabel *certiferNumber;
@property (weak, nonatomic) IBOutlet UILabel *mailNumber;
@property (weak, nonatomic) IBOutlet UILabel *isTurnOnZhengXin;
@property (weak, nonatomic) IBOutlet UIButton *yinxinBtn;
@property (weak, nonatomic) IBOutlet UIButton *atmBtn;
@property (weak, nonatomic) IBOutlet UIButton *telePhoneBtn;
@property (weak, nonatomic) IBOutlet UIButton *ylinkPayBtn;
@property (weak, nonatomic) IBOutlet UIButton *internetBtn;

@end
