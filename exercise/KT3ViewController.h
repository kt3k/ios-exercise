#import <UIKit/UIKit.h>
#import <AFNetworking/AFNetworking.h>
#import <Straw/Straw.h>
#import "KT3StrawHttpService.h"


/**
 exercise viewController
 */
@interface KT3ViewController : UIViewController

/**
 Load a Straw service.

 @param service Straw service class
 */
- (void)loadService:(Class<STWService>)serviceClass;

@end
