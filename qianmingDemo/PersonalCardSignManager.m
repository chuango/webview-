//
//  PersonalCardSignManager.m
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/17.
//  Copyright © 2016年 huarun. All rights reserved.
//


#import "PersonalCardSignManager.h"

@implementation PersonalCardSignItem


@end


@implementation PersonalCardSignManager

+ (PersonalCardSignManager *)sharedPersonalCardSignManager {
    static dispatch_once_t predicate = 0;
    static PersonalCardSignManager *object = nil;
    
    dispatch_once(&predicate, ^{ object = [[self class] new]; });
    
    return object;
}

- (NSString *)getHTML
{
    NSMutableString *htmlstring=[[NSMutableString alloc]initWithString:@"<html>"];
    
    [htmlstring appendString:@"<head>"];
    
    [htmlstring appendString:@"<title></title>"];
    
    /**
     *  添加样式
     */
    
    [htmlstring appendString:@"<style type=\"text/css\">"];
    
    [htmlstring appendString:@"body{font: 14px \"宋体\",\"微软雅黑\";}"];
    
    [htmlstring appendString:@"table{border-collapse: collapse; border-spacing: 0; width: 100%; margin:0; padding:0;}"];
    
    [htmlstring appendString:@".m-main td{border: 1px solid #000; padding-top: 3px; padding-bottom: 3px; padding-left: 5px;}"];
    
    [htmlstring appendString:@".m-title{font-size: 28px; font-weight: 500;}"];
    
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
    
    [htmlstring appendString:@"<caption class=\"m-title\">个人开卡及签约</caption>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td rowspan=\"10\" class=\"m-left\">客<br>户<br>开<br>户<br>及<br>签<br>约<br>信<br>息</td>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">客户名称</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.userName];
    
    [htmlstring appendString:@"<td class=\"m-center\">身份证号码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.idCardNumber];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">证件类型</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.certificateType];
    
    [htmlstring appendString:@"<td class=\"m-center\">证件号码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.certificateNumber];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">职业</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.profession];
    
    [htmlstring appendString:@"<td class=\"m-center\">邮政编码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.postalCode];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">工作单位</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.workPlacer];
    
    [htmlstring appendString:@"<td class=\"m-center\">是否开通查询征信许可</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.checkConsult?@"是":@"否"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">Email地址</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\">%@</td>", _pItem.emailAddress];
    
    
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">通讯地址</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\">%@</td>", _pItem.communicationAddress];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td rowspan=\"4\" class=\"m-center\">签约业务</td>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\"><input type=\"checkbox\" %@/>银信通签约</td>", _pItem.yinXinTong_Signed?@"checked=\"checked\"":@""];
    
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\"><input type=\"checkbox\" %@/>ATM签约</td>", _pItem.atm_Signed?@"checked=\"checked\"":@""];
    
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\"><input type=\"checkbox\" %@/>银联支付签约</td>", _pItem.ylinkZhiFu_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendFormat:@"<td colspan=\"3\"><input type=\"checkbox\" %@/>网上银行/手机银行签约</td>", _pItem.internet_telPhone_Signed?@"checked=\"checked\"":@""];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-left\">"];
    
    [htmlstring appendString:@"客<br>户<br>确<br>认"];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"<td colspan=\"4\" class=\"m-font16\">"];
    
    [htmlstring appendString:@"<p>为保障您的用卡权益，请您详细阅读以下内容并进行确认：</p>"];
    
    [htmlstring appendString:@"<p>1.本人保证向贵行提供的所有资料及录入内容完全属实，并同意贵行向有关方面查核资料的真实性。</p>"];
    
    [htmlstring appendString:@"<p>2.本人同意遵守《储蓄管理条例》以及监控部门和贵行有关个人业务规定，愿意接受贵行通过本人联系电话、E-mail地址、通讯地址等联系方式以手机短信、电话外呼、电子邮件、信函等方式向本人传递业务通知及金融信息。</p>"];
    
    [htmlstring appendString:@"<p>3.本人已阅知并同意遵守《珠海华润银行个人银行账户管理协议》及《珠海华润银行借记卡章程》、《珠海华润银行电子银行业务服务协议》等文件，对因违反规定而造成的损失和后果，本人愿意承担相应的法律责任。</p>"];
    
    [htmlstring appendString:@"<p>4.本人同意贵行有权依据国家有关规定及业务需要对服务内容、收费项目或标准等内容进行调整，并同意贵行以在营业网点、银行网站等公告方式通知该项调整，无需另外通知本人。</p>"];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td align=\"center\" class=\"m-left\">"];
    
    [htmlstring appendString:@"个<br>人<br>征<br>信<br>查<br>询<br>、<br>报<br>送<br>授<br>权<br>声<br>明"];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"<td colspan=\"4\" class=\"m-font16\">"];
    
    [htmlstring appendString:@"<p>本人授权贵行《被授权人》在为本人提供金融服务期间，按个人预授信的约定用途，可通过中国人民银行个人信用基础数据库、鹏元征信数据库及其他合法设立的征信机构查询本人个人信用报告，并同意按照征信监管机构相关规定向上述机构报送个人信息基础。</p>"];
    
    [htmlstring appendString:@"<p>注：</p>"];
    
    [htmlstring appendString:@"<p>1.预授信是指银行根据客户信用状况以及还款能力预先给客户核定授信额度，客户有用款需求时随时申请启用额度。</p>"];
    
    [htmlstring appendString:@"<p>2.被授权人超出授权查询及报送的一切后果及法律责任由被授权人承担。</p>"];
    
    [htmlstring appendString:@"<p>3.授权人知悉并理解授权条款的声明。</p>"];
    
    [htmlstring appendString:@"</td>"];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-left\"><br>客<br>户<br>声<br>明</td>"];
    
    [htmlstring appendString:@"<td colspan=\"4\">"];
    
    [htmlstring appendString:@"<table class=\"inner-table\">"];
    
    [htmlstring appendString:@"<caption>本人同时申请变更以下信息：</caption>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td>变更的信息</td>"];
    
    [htmlstring appendString:@"<td>变更后的内容</td>"];
    
    if (_pItem.telPhone_alter.length > 0) {
        
        [htmlstring appendString:@"</tr>"];
        
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
    
    if (_pItem.address_alter) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>地址</td>"];

        [htmlstring appendFormat:@"<td>%@</td>",_pItem.address_alter];
        
        [htmlstring appendString:@"</tr>"];
        
    }
    
    if (_pItem.postalCode_alter) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>邮政编码</td>"];

        [htmlstring appendFormat:@"<td>%@</td>",_pItem.postalCode_alter];
        
        [htmlstring appendString:@"</tr>"];
    }
    
    if (_pItem.workPlacer_alter) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>工作单位</td>"];

        [htmlstring appendFormat:@"<td>%@</td>",_pItem.workPlacer_alter];
        
        [htmlstring appendString:@"</tr>"];
        
    }
    
    if (_pItem.emailAddress_alter) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>Email</td>"];
        
        [htmlstring appendFormat:@"<td>%@</td>",_pItem.emailAddress_alter];
        
        [htmlstring appendString:@"</tr>"];
        
    }
    
    if (_pItem.profession_alter) {
        
        [htmlstring appendString:@"<tr>"];
        
        [htmlstring appendString:@"<td>职业</td>"];
        [htmlstring appendFormat:@"<td>%@</td>",_pItem.profession_alter];
        
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
