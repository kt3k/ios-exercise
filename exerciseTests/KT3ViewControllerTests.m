#import <XCTest/XCTest.h>
#import "KT3ViewController.h"

@interface KT3ViewControllerTests : XCTestCase
@end

@implementation KT3ViewControllerTests

- (void)testAllocInit
{
    XCTAssertNotNil([[KT3ViewController alloc] init], "KT3ViewController can construct");
}

@end
