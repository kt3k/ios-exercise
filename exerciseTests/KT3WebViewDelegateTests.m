#import <XCTest/XCTest.h>
#import "KT3WebViewDelegate.h"

@interface KT3WebViewDelegateTests: XCTestCase
@end

@implementation KT3WebViewDelegateTests

- (void)testDelegateStart
{
    XCTAssertTrue([[[KT3WebViewDelegate alloc] init] webView:nil shouldStartLoadWithRequest:nil navigationType:UIWebViewNavigationTypeBackForward]);
}

- (void)testWebViewDidFailLoadWithError
{
    [[[KT3WebViewDelegate alloc] init] webView:nil didFailLoadWithError:nil];
}

- (void)testWebViewDidFinishLoad
{
    [[[KT3WebViewDelegate alloc] init] webViewDidFinishLoad:nil];
}

- (void)testWebViewDidStartLoad
{
    [[[KT3WebViewDelegate alloc] init] webViewDidStartLoad:nil];
}

@end
