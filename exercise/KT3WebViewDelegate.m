#import "KT3WebViewDelegate.h"

@implementation KT3WebViewDelegate

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
};


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"KT3WebViewDelegate -webView:shouldStartLoadWithRequest:navigationType:");
    NSLog(@"%@", [[NSBundle mainBundle] pathsForResourcesOfType:@"html" inDirectory:@"/www"]);
    NSLog(@"%@", [[NSBundle mainBundle] pathsForResourcesOfType:@"js" inDirectory:@"/www/js"]);
    NSLog(@"%@", [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"/www"]]);
    //NSLog(@"%@", [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"js"]]);
    return YES;
};


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
};


- (void)webViewDidStartLoad:(UIWebView *)webView
{
};

#ifdef DEBUG
+ (void)load
{
    [[NSUserDefaults standardUserDefaults] setValue:@"XCTestLog,KT3TestObserver" forKey:@"XCTestObserverClass"];
}
#endif


@end
