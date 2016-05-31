//
//  PersonalComprehensiveSignManager.h
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/18.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SuperHTMLSignManager.h"

/**
 *  个人开卡及签约数据对象
 */
@interface PersonalComprehensiveSignItem : NSObject

/**
 *  基本信息
 */
@property (nonatomic ,strong)NSString *userName;                 //客户名称
@property (nonatomic ,strong)NSString *idCardNumber;             //身份证号码
@property (nonatomic ,strong)NSString *bornDate;                 //出生日期
@property (nonatomic ,strong)NSString *sex;                      //性别
@property (nonatomic ,strong)NSString *qianFaDate;               //签发日期
@property (nonatomic ,strong)NSString *availableDate;            //有效日期
@property (nonatomic ,strong)NSString *telPhone;                 //手机号码
@property (nonatomic ,assign)NSString *jiejiCardNumber;          //借记卡卡号码

/**
 *  银信通签约
 */
@property (nonatomic ,assign)BOOL     yinXinTong_Signed;          //银信通签约
@property (nonatomic ,assign)BOOL     yinXinTong_sub1_Signed;     //银信通签约

@property (nonatomic ,assign)BOOL     yinXinTong_sub2_Signed;     //银信通签约
@property (nonatomic ,assign)NSString *storeMoneyStart;           //存款起点金额
@property (nonatomic ,assign)NSString *geMoneyStart;              //取款起点金额

/**
 *  ATM转账签约
 */
@property (nonatomic ,assign)BOOL     atmTrasfer_Signed;          //atm转账签约

@property (nonatomic ,assign)NSString *jnqx_DanBiXianE;           //境内取现单笔限额
@property (nonatomic ,assign)NSString *jnqx_RiLeiJiXianE;         //境内日累计限额
@property (nonatomic ,assign)NSString *jnqx_RiLeiJiZhuanZhangXianE;//境内日累计转账限额

@property (nonatomic ,assign)NSString *jwqx_DanBiXianE;           //境外取现单笔限额
@property (nonatomic ,assign)NSString *jwqx_RiLeiJiXianE;         //境外日累计限额
@property (nonatomic ,assign)NSString *jwqx_RiLeiJiZhuanZhangXianE;//境外日累计转账限额

/**
 *  银联支付签约
 */
@property (nonatomic ,assign)BOOL     ylinkPay_Signed;            //银联支付签约

@property (nonatomic ,assign)NSString *ylinkPay_DanBiXianE;       //当日单笔限额
@property (nonatomic ,assign)NSString *ylinkPay_RiLeiJiXianE;     //当日累计限额

/**
 *  网上银行/手机银行签约
 */
@property (nonatomic ,assign)BOOL     internetAndTel_Signed;            //网上银行／手机银行签约

@property (nonatomic ,assign)BOOL     internetAndTel_DaZhongBan;       //大众版
@property (nonatomic ,assign)BOOL     internetAndTel_ZhuanYeBan;       //专业版

@property (nonatomic ,assign)BOOL     internetAndTel_MoRen;            //默认

@property (nonatomic ,assign)BOOL     internetAndTel_Custome;          //自定义当日累计限额
@property (nonatomic ,assign)NSString *internetAndTel_DanBiZhuanZhangXianE;//自定义当日当笔转账限额
@property (nonatomic ,assign)NSString *internetAndTel_DanRiLeiJiZhuanZhangXianE;//自定义当日累计转账限额


/**
 *  IC卡自动圈存签约
 */
@property (nonatomic ,assign)BOOL     icAutoStore_Signed;            //IC卡自动圈存签约
@property (nonatomic ,assign)NSString *icAutoStore_ChuFa;            //IC卡触发金额
@property (nonatomic ,assign)NSString *icAutoStore_ChongZhi;         //IC卡充值金额



/**
 *  变更信息
 */
@property (nonatomic ,strong)NSString *telPhone_alter;            //手机变更
@property (nonatomic ,strong)NSString *qianFaDate_alter;          //签发日期
@property (nonatomic ,strong)NSString *avaliableDate_alter;       //有效日期
@property (nonatomic ,assign)BOOL     personAccessZhengXin;      //个人许可征信

@end

/**
 *  个人开卡
 */
@interface PersonalComprehensiveSignManager : SuperHTMLSignManager

@property (nonatomic ,strong)PersonalComprehensiveSignItem *pItem;

+ (PersonalComprehensiveSignManager *)sharedPersonalComprehensiveSignManager;

- (NSString *)getHTML;

@end
