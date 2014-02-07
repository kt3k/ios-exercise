//
//  exerciseTests.m
//  exerciseTests
//
//  Created by kt3k on 2014/01/25.
//  Copyright (c) 2014年 kt3k.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "KT3WebViewDelegate.h"

@interface exerciseTests : XCTestCase

@end

@implementation exerciseTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testExample
{
    XCTAssertTrue(YES, @"test");
}

- (void)testDelegateStart
{
    XCTAssertTrue([[[KT3WebViewDelegate alloc] init] webView:nil shouldStartLoadWithRequest:nil navigationType:UIWebViewNavigationTypeBackForward]);
}

@end
