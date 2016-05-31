//
//  SecondViewController.m
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/13.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import "SecondViewController.h"
#import "HtmlManager.h"
#import "BHBMyDrawer.h"

@interface SecondViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIImageView *showImg;
@property (strong, nonatomic) BHBMyDrawer *drawerBoard;

@end

@implementation SecondViewController
{
    UIWebView *tempView;
    UIView *contentView;
    CGSize contentSize;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_webView loadHTMLString:[[[HtmlManager alloc] init] getHTML] baseURL:nil];
    _webView.delegate = self;
    _drawerBoard = [[BHBMyDrawer alloc] initWithFrame:CGRectMake(71, 459, 330, 200)];
    [self.view addSubview:_drawerBoard];
    
    
}
- (IBAction)render:(id)sender {
    
    
    //截图画押
    UIGraphicsBeginImageContext(CGSizeMake(330, 200));
    [_drawerBoard.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *drawView = (UIImageView *)[contentView viewWithTag:100];
    drawView.image = renderImage;
    
    //截取webview
    contentSize = _webView.scrollView.contentSize;
    
    UIGraphicsBeginImageContext(contentSize);
    [tempView.layer renderInContext:UIGraphicsGetCurrentContext()];
    renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *finalWebSpinPic = (UIImageView *)[contentView viewWithTag:102];
    finalWebSpinPic.image = renderImage;
    
    //截取整个容器view
    contentSize = contentView.bounds.size;
    
    UIGraphicsBeginImageContext(contentSize);
    [contentView.layer renderInContext:UIGraphicsGetCurrentContext()];
    renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    _showImg.image = renderImage;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"成功");
    
    if (!tempView) {
        //创建 隐藏画板  上面 webview ＋ imageview(显示最终webview截图)  下面imageview(显示画押)
        contentSize = webView.scrollView.contentSize;
        contentView = [[UIView alloc] initWithFrame:CGRectMake(- contentSize.width, 0, contentSize.width, contentSize.height + 200)];
        tempView = [[UIWebView alloc]initWithFrame:CGRectMake(- contentSize.width, 0, contentSize.width, contentSize.height)];
        tempView.delegate = self;
        [tempView loadHTMLString:[[[HtmlManager alloc] init] getHTML] baseURL:nil];
        [contentView addSubview:tempView];
        
        UIImageView *drawView = [[UIImageView alloc] initWithFrame:CGRectMake(0, contentSize.height, contentSize.width, 200)];
        drawView.tag = 100;
        [contentView addSubview:drawView];
        UIImageView *finalWebSpinPic = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, contentSize.width, contentSize.height)];
        finalWebSpinPic.tag = 102;
        [contentView addSubview:finalWebSpinPic];
        [self.view addSubview:contentView];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
