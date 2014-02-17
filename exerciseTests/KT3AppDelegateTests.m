#import <XCTest/XCTest.h>
#import "KT3AppDelegate.h"

@interface KT3AppDelegateTests : XCTestCase
@end


@implementation KT3AppDelegateTests

- (void)testApplicationWillResignActive
{
    [[[KT3AppDelegate alloc] init] applicationWillResignActive:nil];
}

- (void)testApplicationDidEnterBackground
{
    [[[KT3AppDelegate alloc] init] applicationDidEnterBackground:nil];
}

- (void)testApplicationWillEnterForeground
{
    [[[KT3AppDelegate alloc] init] applicationWillEnterForeground:nil];
}

- (void)testApplicationDidBecomeActive
{
    [[[KT3AppDelegate alloc] init] applicationDidBecomeActive:nil];
}

@end
