//
//  WebViewController.m
//  Nerdfeed
//
//  Created by zhengna on 15/8/4.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)loadView{

    UIWebView *webView = [[UIWebView alloc] init];
    webView.scalesPageToFit = YES;
    self.view = webView;
}

- (void)setURL:(NSURL *)URL{

    _URL = URL;
    if (_URL) {
        NSURLRequest *req = [NSURLRequest requestWithURL:_URL];
        
        [(UIWebView *)self.view loadRequest:req];
    }
}
	

@end
