//
//  ViewController.m
//  qianmingDemo
//
//  Created by 刘亮 on 16/5/13.
//  Copyright © 2016年 huarun. All rights reserved.
//

#import "ViewController.h"
#import "HtmlManager.h"
#import "BHBMyDrawer.h"
#import "PersonalCardSignManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *renderImg;
@property (weak, nonatomic) IBOutlet UIWebView *testWebview;
@property (weak, nonatomic) IBOutlet UIScrollView *contentScrollview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    [_testWebview loadHTMLString:[[PersonalCardSignManager new] getHTML] baseURL:nil];

    _contentScrollview.contentSize = CGSizeMake(319, 510);
    
    UILabel *identiId = [[UILabel alloc] initWithFrame:CGRectMake(10, 420, 200, 50)];
    identiId.text = @"430481198912308996";
    [_contentScrollview addSubview:identiId];
    [self showLineInView:_contentScrollview];
}
- (IBAction)mergeImg:(id)sender {
    UIView *renderView = [UIView new];
    renderView.frame = CGRectMake(200, 300, 319, 510);
    
    UIImageView *picture = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lichen.jpeg"]];
    picture.frame = CGRectMake(0, 110, 319, 400);
    [renderView addSubview:picture];
    
    UILabel *identiId = [[UILabel alloc] initWithFrame:CGRectMake(10, 420, 200, 50)];
    identiId.text = @"430481198912308996";
    [renderView addSubview:identiId];
    [self showLineInView:identiId];
    
//    [self.view addSubview:renderView];
    
    UIGraphicsBeginImageContext(CGSizeMake(renderView.bounds.size.width, renderView.bounds.size.height));
    [renderView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *renderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    _renderImg.image = renderImage;
    [self showLineInView:_renderImg];
}

- (void)showLineInView:(UIView *)view
{
    view.layer.borderWidth = 2;
    view.layer.borderColor = [UIColor redColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
