#import "KT3TestObserver.h"

@implementation KT3TestObserver

- (void)stopObserving
{
    [super stopObserving];
    UIApplication* application = [UIApplication sharedApplication];
    [application.delegate applicationWillTerminate:application];
}

@end
