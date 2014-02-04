#import <Foundation/Foundation.h>

@interface KT3WebViewDelegate : NSObject <UIWebViewDelegate>

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;

- (void)webViewDidFinishLoad:(UIWebView *)webView;

- (void)webViewDidStartLoad:(UIWebView *)webView;

@end
