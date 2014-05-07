#import "KT3ViewController.h"

@interface KT3ViewController ()

@property (nonatomic, retain) STWWebViewDelegate *delegate;
@property (nonatomic, retain) UIWebView *webView;

@end

@implementation KT3ViewController


- (id)init
{
    self = [super init];

    if (self) {
        UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];

        webView.autoresizesSubviews = YES;
        webView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);

        self.webView = webView;

        self.delegate = [[STWWebViewDelegate alloc] initWithWebView:webView withViewController:self];

        [[STWLogger sharedLogger] setLevel:kSTWLoggerLevelVerbose];

    }

    return self;
}


- (void)loadService:(Class<STWService>)serviceClass
{
    [self.delegate loadService:serviceClass];
}


- (void)viewDidLoad
{

    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"www/index" ofType:@"html"]]]];

    [self.view addSubview:self.webView];

    [super viewDidLoad];

}


@end
