#import "KT3ViewController.h"

@interface KT3ViewController ()

@property id <UIWebViewDelegate> delegate;

@end

@implementation KT3ViewController

- (void)viewDidLoad
{

    UIWebView *wv = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 40.0, 320, 300)];

    STWWebViewDelegate *delegate = [[STWWebViewDelegate alloc] initWithWebView:wv];

    self.delegate = delegate;

    [[STWLogger sharedLogger] setLevel:kSTWLoggerLevelVerbose];

    [wv loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"www/index" ofType:@"html"]]]];

    [self.view addSubview:wv];

    [super viewDidLoad];

}

@end
