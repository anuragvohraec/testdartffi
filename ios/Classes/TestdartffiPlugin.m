#import "TestdartffiPlugin.h"
#import <testdartffi/testdartffi-Swift.h>

@implementation TestdartffiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTestdartffiPlugin registerWithRegistrar:registrar];
}
@end
