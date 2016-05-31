//
//  HtmlManager.m
//  drawText
//
//  Created by 刘亮 on 16/4/12.
//  Copyright © 2016年 anihaiseyao. All rights reserved.
//

#import "HtmlManager.h"

@implementation HtmlManager

- (NSString *)getHTML
{
    NSMutableString *htmlstring=[[NSMutableString alloc]initWithString:@"<html>"];
    
    [htmlstring appendString:@"<head>"];
    
    [htmlstring appendString:@"<style type=\"text/css\"><!--body{line-height:50%}--></style>"];//控制行间距
    
    [htmlstring appendString:@"</head>"];
    
    [htmlstring appendString:@"<body>"];
    
    [htmlstring appendString:@"<p>alihaiseyao</p>\n\n\n\n\n"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    [htmlstring appendFormat:@"<img src=\"data:image/png;base64,"];
    [htmlstring appendFormat:@"%@\"/>",_base64Img];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    [htmlstring appendString:@"<p>alihaiseyao</p>这位博主的连接中将ios自定义大小位置的截屏代码写的很不错，马上就能用的方法，对于只想马上用的程序员很有帮助"];
    
    return htmlstring;
}

@end