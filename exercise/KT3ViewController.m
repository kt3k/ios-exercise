#import "KT3ViewController.h"

@interface KT3ViewController ()

@property (nonatomic, retain) id<UIWebViewDelegate> delegate;

@end

@implementation KT3ViewController

- (void)viewDidLoad
{

    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];

    webView.autoresizesSubviews = YES;
    webView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);

    STWWebViewDelegate *delegate = [[STWWebViewDelegate alloc] initWithWebView:webView];

    self.delegate = delegate;

    [[STWLogger sharedLogger] setLevel:kSTWLoggerLevelVerbose];

    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"www/index" ofType:@"html"]]]];

    [self.view addSubview:webView];

    [super viewDidLoad];

}


@end
