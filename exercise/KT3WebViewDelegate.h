#import <Foundation/Foundation.h>

/**
 
 WebView delegate


 */

@interface KT3WebViewDelegate : NSObject <UIWebViewDelegate>

/**

 webView didFailLoadWithError
 
 @param webView the WebView
 @param error the error

 */
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;

/**
 
 webView shouldStartLoadWithRequest navigationType
 
 @param webView the webView
 @param request request to handle
 @param navigationType type of navigation
 */
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;

/**
 webView finished the load
 
 @param webView the webView
 */
- (void)webViewDidFinishLoad:(UIWebView *)webView;

/**
 webView started the load
 
 @param webView the webView
 */
- (void)webViewDidStartLoad:(UIWebView *)webView;

@end
