//
//  KT3ViewController.m
//  exercise
//
//  Created by kt3k on 2014/01/25.
//  Copyright (c) 2014年 kt3k.com. All rights reserved.
//

#import "KT3ViewController.h"

@interface KT3ViewController ()

@end

@implementation KT3ViewController

- (void)viewDidLoad
{

    UILabel *a =[[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 100.0)];

    a.text = @"test";

    a.backgroundColor = [UIColor grayColor];

    a.textColor = [UIColor redColor];

    // add to viewController's view
    [self.view addSubview:a];

    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
