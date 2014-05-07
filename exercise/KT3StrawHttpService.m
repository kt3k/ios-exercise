#import "KT3StrawHttpService.h"

@implementation KT3StrawHttpService

- (NSString *)name
{
    return @"http";
}

- (BOOL)isBackgroundJob:(NSString *)method
{
    return YES;
}


- (void)method:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context
{
    NSLog(@"KT3StrawHttpService -method:withContext:");
}

@end
