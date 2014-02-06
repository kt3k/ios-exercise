//
//  KT3ViewController.m
//  exercise
//
//  Created by kt3k on 2014/01/25.
//  Copyright (c) 2014年 kt3k.com. All rights reserved.
//

#import "KT3ViewController.h"
#import "KT3WebViewDelegate.h"
#import <AFNetworking/AFNetworking.h>

@interface KT3ViewController ()

@property id <UIWebViewDelegate> delegate;

@end

@implementation KT3ViewController

- (void)viewDidLoad
{

    UIWebView *wv = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 40.0, 320, 300)];

    id <UIWebViewDelegate> delegate = [[KT3WebViewDelegate alloc] init];

    self.delegate = delegate;

    wv.delegate = self.delegate;

    [wv loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"www/index" ofType:@"html"]]]];

    [self.view addSubview:wv];

    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
