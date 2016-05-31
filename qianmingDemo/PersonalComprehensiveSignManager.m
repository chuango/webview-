//
//  PersonalComprehensiveSignManager.m
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/18.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import "PersonalComprehensiveSignManager.h"

@implementation PersonalComprehensiveSignItem


@end

@implementation PersonalComprehensiveSignManager

+ (PersonalComprehensiveSignManager *)sharedPersonalComprehensiveSignManager {
    static dispatch_once_t predicate = 0;
    static PersonalComprehensiveSignManager *object = nil;
    
    dispatch_once(&predicate, ^{ object = [[self class] new]; });
    
    return object;
}

- (NSString *)getHTML
{
    NSMutableString *htmlstring=[[NSMutableString alloc]initWithString:@"<!DOCTYPE html>"];
    
    [htmlstring appendString:@"<head>"];
    
    [htmlstring appendString:@"<meta charset=\"UTF-8\">"];
    
    [htmlstring appendString:@"<title></title>"];
    
    /**
     *  添加样式
     */
    
    [htmlstring appendString:@"<style type=\"text/css\">"];
    
    [htmlstring appendString:@"body{font: 14px \"宋体\",\"微软雅黑\";}"];
    
    [htmlstring appendString:@"table{border-collapse: collapse; border-spacing: 0; width: 100%; margin:0; padding:0;}"];
    
    [htmlstring appendString:@".m-main td{border: 1px solid #000; padding-top: 3px; padding-bottom: 3px; padding-left: 5px;}"];
    
    [htmlstring appendString:@".m-title{font-size: 28px; font-weight: 500;padding: 7px 0;}"];
    
    [htmlstring appendString:@".m-center{text-align: center;}"];
    
    [htmlstring appendString:@"td.m-left{width:5%; padding: 20px 20px; background-color: rgb(218,238,243);}"];
    
    [htmlstring appendString:@".inner-table{margin: 3px 10px; width: 98%;}"];
    
    [htmlstring appendString:@".inner-table td{padding: 3px 0 3px 5px;}"];
    
    [htmlstring appendString:@".inner-table caption{padding-bottom: 5px;}"];
    
    [htmlstring appendString:@".m-font16{font-size: 16px;}"];
    
    [htmlstring appendString:@"</style>"];
    
    [htmlstring appendString:@"</head>"];
    
    [htmlstring appendString:@"<body>"];
    
    [htmlstring appendString:@"<table class=\"m-main\">"];
    
    [htmlstring appendString:@"<caption class=\"m-title\">个人综合签约</caption>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">客户名称</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.userName];
    
    [htmlstring appendString:@"<td class=\"m-center\">身份证号码</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"2\">%@</td>",_pItem.idCardNumber];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">出生日期</td>"];
    
    [htmlstring appendFormat:@"<td >%@</td>",_pItem.bornDate];
    
    [htmlstring appendString:@"<td class=\"m-center\">性别</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"2\">%@</td>",_pItem.sex];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">签发日期</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.qianFaDate];
    
    [htmlstring appendString:@"<td class=\"m-center\">有效日期</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"2\">%@</td>",_pItem.availableDate];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">手机号码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.telPhone];
    
    [htmlstring appendString:@"<td class=\"m-center\">借记卡号码</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"2\">%@</td>",_pItem.jiejiCardNumber];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td rowspan=\"10\" class=\"m-left\">客户信息及签约信息</td>"];
    
    [htmlstring appendFormat:@"<td rowspan=\"2\"><input type=\"checkbox\" %@/>银信通签约</td>",_pItem.yinXinTong_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendFormat:@"<td colspan=\"3\"><input type=\"checkbox\" %@/>默认短信通知起点金额(只要账户余额发生变动就发送短信)</td>",_pItem.yinXinTong_sub1_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\"><input type=\"checkbox\" %@/>存款通知起点金额<label>%@</label>元，取款通知起点金额<label>%@</label>元。</td>", _pItem.yinXinTong_sub2_Signed?@"checked=\"checked\"":@"",_pItem.storeMoneyStart,_pItem.geMoneyStart];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td><input type=\"checkbox\" %@/>ATM转账签约</td>",_pItem.atmTrasfer_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"<td colspan=\"3\">"];
    
    [htmlstring appendFormat:@"<p>设定境内取现单笔限额为<label>%@</label>元;取现日累计限额为<label>%@</label>元；日累计转账限额为<label>%@</label>元。</p>", _pItem.jnqx_DanBiXianE,_pItem.jnqx_RiLeiJiXianE,_pItem.jnqx_RiLeiJiZhuanZhangXianE];
    
    [htmlstring appendFormat:@"<p>设定境外取现单笔限额为<label>%@</label>元；取现日累计限额为<label>%@</label>元；日累计转账限额为<label>%@</label>元。</p>", _pItem.jwqx_DanBiXianE,_pItem.jwqx_RiLeiJiXianE,_pItem.jwqx_RiLeiJiZhuanZhangXianE];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td><input type=\"checkbox\" %@/>银联支付签约</td>",_pItem.ylinkPay_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"<td colspan=\"3\">"];
    
    [htmlstring appendFormat:@"<p>设定当笔转账限额<label>%@</label>元，当日累计转账限额<label>%@</label>元。</p>",_pItem.ylinkPay_DanBiXianE,_pItem.ylinkPay_RiLeiJiXianE];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td rowspan=\"3\"><input type=\"checkbox\" %@/>网上银行/手机银行签约</td>", _pItem.internetAndTel_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"<td rowspan=\"3\">认证方式：</td>"];
    
    [htmlstring appendFormat:@"<td><input type=\"checkbox\" %@/>大众版</td>",_pItem.internetAndTel_DaZhongBan?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"<td>&nbsp;</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td rowspan=\"2\"><input type=\"checkbox\" %@/>专业版</td>", _pItem.internetAndTel_ZhuanYeBan?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"<td>认证方式：手机动态口令</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td>"];
    
    [htmlstring appendFormat:@"<p>转账限额：<input type=\"checkbox\" %@/>默认当日单笔限额<label>2000</label>元，累计限额<label>3000</label>元</p>",_pItem.internetAndTel_MoRen?@"checked=\"checked\"":@""];
    
    [htmlstring appendFormat:@"<p><input type=\"checkbox\" %@/>设定当日单笔转账限额<label>%@</label>元，当日累计转账限额<label>%@</label>元。</p>",_pItem.internetAndTel_Custome?@"checked=\"checked\"":@"",_pItem.internetAndTel_DanBiZhuanZhangXianE,_pItem.internetAndTel_DanRiLeiJiZhuanZhangXianE];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td rowspan=\"3\"><input type=\"checkbox\" %@/>IC卡自动圈存签约</td>",_pItem.icAutoStore_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"<td colspan=\"3\">IC卡充值方式：充到固定金额</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\">IC卡触发金额：<label>%@</label>元</td>",_pItem.icAutoStore_ChuFa];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\">IC卡充值金额：<label>%@</label>元",_pItem.icAutoStore_ChongZhi];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-left\">客户确认</td>"];
    
    [htmlstring appendString:@"<td colspan=\"4\" class=\"m-font16\">"];
    
    [htmlstring appendString:@"<p>为保障您的用卡权益，请您详细阅读以下内容并进行确认：</p>"];
    
    [htmlstring appendString:@"<p>1.本人保证向贵行提供的所有资料及录入内容完全属实，并同意贵行向有关方面查核资料的真实性。</p>"];
    
    [htmlstring appendString:@"<p>2.本人同意遵守《储蓄管理条例》以及监控部门和贵行有关个人业务规定，愿意接受贵行通过本人联系电话、E-mail地址、通讯地址等联系方式以手机短信、电话外呼、电子邮件、信函等方式向本人传递业务通知及金融信息。</p>"];
    
    [htmlstring appendString:@"<p>3.本人已阅知并同意遵守《珠海华润银行个人银行账户管理协议》及《珠海华润银行借记卡章程》、《珠海华润银行电子银行业务服务协议》等文件，对因违反规定而造成的损失和后果，本人愿意承担相应的法律责任。</p>"];
    
    [htmlstring appendString:@"<p>4.本人同意贵行有权依据国家有关规定及业务需要对服务内容、收费项目或标准等内容进行调整，并同意贵行以在营业网点、银行网站等公告方式通知该项调整，无需另外通知本人。</p>"];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-left\">个人征信查询、报送授权声明</td>"];
    
    [htmlstring appendString:@"<td colspan=\"4\" class=\"m-font16\">"];
    
    [htmlstring appendString:@"<p>本人授权贵行《被授权人》在为本人提供金融服务期间，按个人预授信的约定用途，可通过中国人民银行个人信用基础数据库、鹏元征信数据库及其他合法设立的征信机构查询本人个人信用报告，并同意按照征信监管机构相关规定向上述机构报送个人信息基础。</p>"];
    
    [htmlstring appendString:@"<p>1.预授信是指银行根据客户信用状况以及还款能力预先给客户核定授信额度，客户有用款需求时随时申请启用额度。</p>"];
    
    [htmlstring appendString:@"<p>2.被授权人超出授权查询及报送的一切后果及法律责任由被授权人承担。</p>"];
    
    [htmlstring appendString:@"<p>3.授权人知悉并理解授权条款的声明。</p>"];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-left\">申明</td>"];
    
    [htmlstring appendString:@"<td colspan=\"4\">"];
    
    [htmlstring appendString:@"<table class=\"inner-table\">"];
    
    [htmlstring appendString:@"<caption>本人同时申请变更以下信息：</caption>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td>变更的信息</td>"];
    
    [htmlstring appendString:@"<td>变更后的内容</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    if (_pItem.telPhone_alter.length > 0) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>手机</td>"];
        
        [htmlstring appendFormat:@"<td>%@</td>",_pItem.telPhone_alter];
        
        [htmlstring appendString:@"</tr>"];
    }
    
    if (_pItem.qianFaDate_alter.length > 0) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>签发日期</td>"];
        
        [htmlstring appendFormat:@"<td>%@</td>",_pItem.qianFaDate_alter];
        
        [htmlstring appendString:@"</tr>"];
    }
    
    if (_pItem.avaliableDate_alter.length > 0) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>有效日期</td>"];
        
        [htmlstring appendFormat:@"<td>%@</td>",_pItem.avaliableDate_alter];
        
        [htmlstring appendString:@"</tr>"];
    }
    
    if (_pItem.personAccessZhengXin) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td colspan=\"2\"><input type=\"checkbox\" checked=\"checked\"/>个人信征许可</td>"];
        
        [htmlstring appendString:@"</tr>"];
        
    }
    
    [htmlstring appendString:@"</table>"];
    
    [htmlstring appendString:@"</td>"];
    [htmlstring appendString:@"</tr>"];
    [htmlstring appendString:@"</table>"];
    [htmlstring appendString:@"</body>"];
    [htmlstring appendString:@"</html>"];
    
    return htmlstring;
}


@end
