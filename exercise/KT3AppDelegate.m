#import "KT3AppDelegate.h"


@implementation KT3AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // initialize window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // initialize viewController
    KT3ViewController *viewController = [[KT3ViewController alloc] init];

    [viewController loadService:[STWServiceHttp class]];

    // set to viewController property
    self.viewController = viewController;

    // set it to rootViewController
    self.window.rootViewController = self.viewController;

    // make key and visible
    [self.window makeKeyAndVisible];

    return YES;

}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
