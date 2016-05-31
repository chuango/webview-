//
//  ThirdViewController.m
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/16.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import "ThirdViewController.h"
#import "PersonalCardSignManager.h"
#import "PersonalComprehensiveSignManager.h"
#import "PersonalFianaceSignManager.h"


#import "BHBMyDrawer.h"

@interface ThirdViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (strong, nonatomic) BHBMyDrawer *drawer;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (assign, nonatomic) SuperHTMLSignManager *curManager;

@end

@implementation ThirdViewController
{
    UIWebView *tempView;
    CGSize    contentSize;
    UIView    *left_contentView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //添加绘图板
    _drawer = [[BHBMyDrawer alloc] initWithFrame:CGRectMake(219, 0, 628, 231)];
    [_contentView addSubview:_drawer];
    
    _webview.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)personCardAction:(id)sender {
    PersonalCardSignItem *item = [PersonalCardSignItem new];
    item.userName = @"刘亮";
    item.idCardNumber = @"430481198912308996";
    item.certificateType = @"学生证";
    item.certificateNumber = @"1231232";
    item.profession = @"IT男";
    item.postalCode = @"425100";
    item.workPlacer = @"金融科技大厦";
    item.checkConsult = YES;
    item.emailAddress = @"a1152024140@qq.com";
    item.communicationAddress = @"";
    
    item.yinXinTong_Signed = YES;
    item.atm_Signed = YES;
    item.ylinkZhiFu_Signed = YES;
    item.internet_telPhone_Signed = YES;
    
    item.telPhone_alter = @"13823751082";
    item.qianFaDate_alter = @"12年12月29日";
    item.avaliableDate_alter = @"13年2月5日";
    item.address_alter = @"湖南衡阳";
    item.postalCode_alter = @"425100";
    item.workPlacer_alter = @"深圳金融科技大厦";
    item.emailAddress_alter = @"13823751082@163.com";
    item.profession_alter = @"金融家";
    
    PersonalCardSignManager *pManager = [PersonalCardSignManager sharedPersonalCardSignManager];
    pManager.pItem = item;
    
    _curManager = pManager;
    
    [_webview loadHTMLString:[pManager getHTML] baseURL:nil];
    
    [self performSelector:@selector(webViewDidFinishLoad) withObject:nil afterDelay:0.5];
}
- (IBAction)comprehensiveAction:(id)sender {
    
    PersonalComprehensiveSignItem *item = [PersonalComprehensiveSignItem new];
    item.userName = @"吴斌";
    item.idCardNumber = @"430481198912308997";
    item.bornDate = @"1989年12月30日";
    item.sex = @"男";
    item.qianFaDate = @"1988年2月3日";
    item.availableDate = @"1945年12月3日";
    item.telPhone = @"13823751082";
    item.jiejiCardNumber = @"43890979909883939";
    
    item.yinXinTong_Signed = YES;
    item.yinXinTong_sub1_Signed = YES;
    item.storeMoneyStart = @"";
    item.geMoneyStart = @"";
    
    item.atmTrasfer_Signed = YES;
    item.jnqx_DanBiXianE = @"5000";
    item.jnqx_RiLeiJiXianE = @"10000";
    item.jnqx_RiLeiJiZhuanZhangXianE = @"20000";
    
    item.jwqx_DanBiXianE = @"5000";
    item.jwqx_RiLeiJiXianE = @"20000";
    item.jwqx_RiLeiJiZhuanZhangXianE = @"12000";
    
    item.ylinkPay_Signed = YES;
    item.ylinkPay_DanBiXianE = @"2000";
    item.ylinkPay_RiLeiJiXianE = @"12000";
    
    item.internetAndTel_Signed = YES;
    item.internetAndTel_DaZhongBan = NO;
    item.internetAndTel_ZhuanYeBan = YES;
    item.internetAndTel_MoRen = NO;
    item.internetAndTel_Custome = YES;
    item.internetAndTel_DanBiZhuanZhangXianE = @"20000";
    item.internetAndTel_DanRiLeiJiZhuanZhangXianE = @"12000";
    
    item.icAutoStore_Signed = YES;
    item.icAutoStore_ChuFa = @"20000";
    item.icAutoStore_ChongZhi = @"120000";
    
    item.telPhone_alter = @"13823751082";
    item.qianFaDate_alter = @"12年12月2日";
    item.avaliableDate_alter = @"";
    item.personAccessZhengXin = YES;
    
    
    PersonalComprehensiveSignManager *pManager = [PersonalComprehensiveSignManager sharedPersonalComprehensiveSignManager];
    pManager.pItem = item;
    
    _curManager = pManager;
    
    [_webview loadHTMLString:[pManager getHTML] baseURL:nil];
    
    [self performSelector:@selector(webViewDidFinishLoad) withObject:nil afterDelay:0.5];
}
- (IBAction)financialAction:(id)sender {
    PersonalFinanceSignItem *item = [PersonalFinanceSignItem new];
    item.userName = @"刘亮";
    item.idCardNumber = @"430481198912308997";
    item.bornDate = @"1989年12月3日";
    item.sex = @"男";
    item.qianFaDate = @"12年2月3日";
    item.youXiaoDate = @"14年4月12日";
    item.telPhone = @"13823751082";
    item.jieJiKaNumber = @"6214836558144388";
    
    PersonalFianaceSignManager *pfManager = [PersonalFianaceSignManager sharedPersonalFinanceSignManager];
    pfManager.pItem = item;
    
    _curManager = pfManager;
    
    [_webview loadHTMLString:[pfManager getHTML] baseURL:nil];
    
    [self performSelector:@selector(webViewDidFinishLoad) withObject:nil afterDelay:0.5];
}
- (IBAction)mergePNG:(id)sender {
    //截图画押
    UIGraphicsBeginImageContext(CGSizeMake(330, 200));
    [_drawer.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *drawView = (UIImageView *)[left_contentView viewWithTag:100];
    drawView.image = renderImage;
    
    //截取webview
    contentSize = _webview.scrollView.contentSize;
    
    UIGraphicsBeginImageContext(contentSize);
    [tempView.layer renderInContext:UIGraphicsGetCurrentContext()];
    renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *finalWebSpinPic = (UIImageView *)[left_contentView viewWithTag:102];
    finalWebSpinPic.image = renderImage;
    
    //截取整个容器view
    contentSize = left_contentView.bounds.size;
    
    UIGraphicsBeginImageContext(contentSize);
    [left_contentView.layer renderInContext:UIGraphicsGetCurrentContext()];
    renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filePath = [NSString stringWithString:[self getPath:@"image1"]];         //将图片存储到本地documents
    
    [fileManager createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:nil];
    
    NSData *data = UIImagePNGRepresentation(renderImage);
    
    BOOL saveSuccess = [data writeToFile:filePath atomically:YES];
    
    if (saveSuccess) {
        NSLog(@"%@",filePath);
        [[[UIAlertView alloc] initWithTitle:@"保存成功了" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil] show];
    }
}

- (NSString *)getPath:(NSString *)imgName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    
    NSString *filePath = [[paths objectAtIndex:0] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", imgName]];
    
    return filePath;
}

- (IBAction)saveAction:(id)sender {
    
}

- (void)webViewDidFinishLoad
{
    if (!tempView) {
        //创建 隐藏画板  上面 webview ＋ imageview(显示最终webview截图)  下面imageview(显示画押)
        contentSize = _webview.scrollView.contentSize;
        left_contentView = [[UIView alloc] initWithFrame:CGRectMake(- contentSize.width, 0, contentSize.width, contentSize.height + 231)];
        tempView = [[UIWebView alloc]initWithFrame:CGRectMake(- contentSize.width, 0, contentSize.width, contentSize.height)];
        tempView.delegate = self;
        
        [tempView loadHTMLString:[_curManager getHTML] baseURL:nil];
        [left_contentView addSubview:tempView];
        
        UIImageView *drawView = [[UIImageView alloc] initWithFrame:CGRectMake(0, contentSize.height, contentSize.width, 231)];
        drawView.tag = 100;
        [left_contentView addSubview:drawView];
        UIImageView *finalWebSpinPic = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, contentSize.width, contentSize.height)];
        finalWebSpinPic.tag = 102;
        [left_contentView addSubview:finalWebSpinPic];
        [self.view addSubview:left_contentView];
    }

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
