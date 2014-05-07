#import <Foundation/Foundation.h>
#import <Straw/Straw.h>

@interface KT3StrawHttpService : NSObject <STWService>

- (void)method:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context;

@end
