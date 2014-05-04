#import "KT3ViewController.h"
#import "KT3WebViewDelegate.h"

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

@end
