#import "EasyBootPlugin.h"
#if __has_include(<easy_boot/easy_boot-Swift.h>)
#import <easy_boot/easy_boot-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "easy_boot-Swift.h"
#endif

@implementation EasyBootPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEasyBootPlugin registerWithRegistrar:registrar];
}
@end
