//
//  PersonalFianaceSignManager.h
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/19.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SuperHTMLSignManager.h"

/**
 *  个人理财签约数据对象
 */
@interface PersonalFinanceSignItem : NSObject

/**
 *  基本信息
 */
@property (nonatomic ,strong)NSString *userName;                 //客户名称
@property (nonatomic ,strong)NSString *idCardNumber;             //身份证号码
@property (nonatomic ,strong)NSString *bornDate;                 //出生日期
@property (nonatomic ,strong)NSString *sex;                      //性别
@property (nonatomic ,strong)NSString *qianFaDate;               //签发日期
@property (nonatomic ,strong)NSString *youXiaoDate;              //有效日期
@property (nonatomic ,strong)NSString *telPhone;                 //手机号
@property (nonatomic ,strong)NSString *jieJiKaNumber;            //借记卡卡号码

@end

/**
 *  个人理财签约控制器
 */
@interface PersonalFianaceSignManager : SuperHTMLSignManager

@property (nonatomic ,strong)PersonalFinanceSignItem *pItem;

+ (PersonalFianaceSignManager *)sharedPersonalFinanceSignManager;

- (NSString *)getHTML;

@end
