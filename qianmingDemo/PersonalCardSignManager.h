//
//  PersonalCardSignManager.h
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/17.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SuperHTMLSignManager.h"

/**
 *  个人综合签约数据对象
 */
@interface PersonalCardSignItem : NSObject

/**
 *  基本信息
 */
@property (nonatomic ,strong)NSString *userName;                 //客户名称
@property (nonatomic ,strong)NSString *idCardNumber;             //身份证号码
@property (nonatomic ,strong)NSString *certificateType;          //证件类型
@property (nonatomic ,strong)NSString *certificateNumber;        //证件号码
@property (nonatomic ,strong)NSString *profession;               //职业
@property (nonatomic ,strong)NSString *postalCode;               //邮政编码
@property (nonatomic ,strong)NSString *workPlacer;               //工作单位
@property (nonatomic ,assign)BOOL     checkConsult;              //是否开通查询征信许可
@property (nonatomic ,strong)NSString *emailAddress;             //Email地址
@property (nonatomic ,strong)NSString *communicationAddress;     //通讯地址
/**
 *  各种签约
 */
@property (nonatomic ,assign)BOOL     yinXinTong_Signed;         //银信通签约
@property (nonatomic ,assign)BOOL     atm_Signed;                //ATM签约
@property (nonatomic ,assign)BOOL     ylinkZhiFu_Signed;         //银联支付签约
@property (nonatomic ,assign)BOOL     internet_telPhone_Signed;  //网上银行/手机银行签约
/**
 *  变更信息
 */
@property (nonatomic ,strong)NSString *telPhone_alter;            //手机变更
@property (nonatomic ,strong)NSString *qianFaDate_alter;          //签发日期
@property (nonatomic ,strong)NSString *avaliableDate_alter;       //有效日期
@property (nonatomic ,strong)NSString *address_alter;             //地址
@property (nonatomic ,strong)NSString *postalCode_alter;          //邮政编码
@property (nonatomic ,strong)NSString *workPlacer_alter;          //工作单位
@property (nonatomic ,strong)NSString *emailAddress_alter;        //Email地址
@property (nonatomic ,strong)NSString *profession_alter;          //职业

@end

/**
 *  个人综合签约 签约html组装对象
 */
@interface PersonalCardSignManager : SuperHTMLSignManager


@property (nonatomic ,strong)PersonalCardSignItem *pItem;

+ (PersonalCardSignManager *)sharedPersonalCardSignManager;

- (NSString *)getHTML;

@end
