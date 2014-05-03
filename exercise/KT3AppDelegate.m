#import "KT3AppDelegate.h"
#import "KT3ViewController.h"


@implementation KT3AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // alloc and init a window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // alloc and init viewController
    self.viewController = [[KT3ViewController alloc] init];

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
