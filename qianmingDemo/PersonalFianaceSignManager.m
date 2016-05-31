//
//  PersonalFianaceSignManager.m
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/19.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import "PersonalFianaceSignManager.h"

@implementation PersonalFinanceSignItem


@end

@implementation PersonalFianaceSignManager

+ (PersonalFianaceSignManager *)sharedPersonalFinanceSignManager {
    static dispatch_once_t predicate = 0;
    static PersonalFianaceSignManager *object = nil;
    
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
    
    [htmlstring appendString:@"<caption class=\"m-title\">个人理财签约</caption>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">客户名称</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.userName];
    
    [htmlstring appendString:@"<td class=\"m-center\">身份证号码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.idCardNumber];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">出生日期</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.bornDate];
    
    [htmlstring appendString:@"<td class=\"m-center\">性别</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.sex];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">签发日期</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.qianFaDate];
    
    [htmlstring appendString:@"<td class=\"m-center\">有效日期</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.youXiaoDate];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td class=\"m-center\">手机号码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.telPhone];
    
    [htmlstring appendString:@"<td class=\"m-center\">借记卡号码</td>"];
    
    [htmlstring appendFormat:@"<td>%@</td>",_pItem.jieJiKaNumber];
    
    [htmlstring appendString:@"</tr>"];
    
    [htmlstring appendString:@"<tr>"];
    
    [htmlstring appendString:@"<td colspan=\"4\">"];
    
    [htmlstring appendString:@"<p>尊敬的客户：</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">为了维护您的权益，请在签署本协议前，仔细阅读本协议各条款，充分了解银行理财业务的允许规则，协议双方的权利、义务和责任。如有疑问，可向银行理财产品发售机构咨询。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">甲方（客户）与乙方（珠海华润银行）经友好协商，就甲方向乙方购买人民币理财计划订立本协议。</p> "];
    
    [htmlstring appendString:@"<p class=\"m-indent\">1、《珠海华润银行人民币理财计划产品认购协议》（以下简称：本协议）、《产品说明书》、《风险揭示书》、《客户权益须知》、《业务回单》、交易凭证等有关法律文件，共同构成甲方和乙方之间就该理财计划交易的条件和条款。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">2、甲方购买乙方人民币理财计划，接受乙方提供的投资理财服务，并在乙方营业网点开立银行结算账户（金融机构客户除外，以下简称理财专户），用于本理财计划的认购、资金划转及其收益返还。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">3、甲乙双方保证其具有完全民事行为能力签订和履行本协议及其项下相关文件。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">4、甲方声明：甲方用于购买理财的资金是甲方合法的自由资金，甲方将该资金用作本协议条款项下理财交易并不违反相关法律、法规、规章、规定、法院裁定或命令的要求。甲方签署本协议即表示同意接受本协议的规定，并接受乙方依据本协议冻结与扣划甲方理财专户资金。乙方在划款时不需要与甲方以电话等方式进行最后确认。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">5、乙方保证以诚实信用、谨慎勤勉的原则投资及运用理财计划项下的资金，严格履行理财认购协议和产品说明书的约定，并在河里可行的限度内，尽其最大限度努力维护甲方的权益。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">6、甲方应在理财专户存入足额的理财本金，并应保证理财资金扣划后账户余额大于或等于1元，否则乙方将不予划转任何资金。如由于甲方的原因造成理财专户资金余额不足、换卡（折）、冻结等特殊情况或被司法或行政机关采取冻结、处理等强制措施导致资金扣划不成功的，视同甲方自动放弃参与本理财计划。在甲方账户挂失的情况下，若甲方在产品成立日前一个工作日：17:00前，未通过书面请示提出异议，乙方在产品成立日将自动划转理财资金。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">7、由于地震、火灾、战争等不可抗力以及乙方不可预测或无法控制的系统故障、设备故障、通讯故障、停电等突发事故的交易中断、延误等风险及损失，乙方不承担责任，但应在条件允许的情况下通知甲方，并采取一切必要的不就措施以减少不可抗力造成的损失。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">8、由于国家有关的法律、法规、规章、政策改变、紧急措施的出台而导致理财计划无法继续运作，由此可能给甲方带来的风险或损失，乙方不承担责任。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">9、本协议中涉及的所有日期如遇法定节假日则顺延至下一个银行工作日。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">10、甲乙双方特此确认：甲方签署协议之前，已详细阅读本理财计划相关文件，包括本协议内容、《产品说明书》、《风险揭示书》和《客户权益须知》等法律文件。乙方已就上述文件的痊愈条款和内容向甲方进行了详细说明和解释，甲方已不存在任何疑问或异议，并对协议双方的权利、疑问及风险有全面准确的理解，充分了解并原因承担本协议项下理财计划的风险。乙方提供的任何演示或说明均仅供参考，不表示任何承诺。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">11、本协议等相关文件适用中华人民共和国法律。本协议及相关文件项下产生的任何纠纷如不能通过协商解决的，任何一方应向乙方所在地法院提起诉讼。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">12、本协议自甲乙双方签字或盖章之日起生效，或甲方通过银行网上银行等电子渠道自行确认后起生效。至产品到期日、提起终止日或客户撤单日、客户全额赎回确认日终止。</p>"];
    
    [htmlstring appendString:@"<p class=\"m-indent\">13、本协议自认购日起生效，至产品到期日、提前终止日或客户撤单日终止。</p>"];
    
    [htmlstring appendString:@"</td>"];
    [htmlstring appendString:@"</tr>"];
    [htmlstring appendString:@"</table>"];
    [htmlstring appendString:@"</body>"];
    [htmlstring appendString:@"</html>"];
    
    return htmlstring;
}


@end
