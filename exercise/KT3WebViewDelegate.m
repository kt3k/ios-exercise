#import "KT3WebViewDelegate.h"

@implementation KT3WebViewDelegate

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
};


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"KT3WebViewDelegate");
    NSLog(@"%@", [[NSBundle mainBundle] bundlePath]);
    NSLog(@"%@", [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]]);
    return YES;
};


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
};


- (void)webViewDidStartLoad:(UIWebView *)webView
{
};


@end
