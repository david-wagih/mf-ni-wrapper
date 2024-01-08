#import <NICardManagementSDK-Swift.h>
#import <Cordova/CDV.h>
#import "MfNiWrapperPlugin.swift"

@interface MfNiWrapperPlugin : CDVPlugin {
    // Member variables go here.
}
@end

@implementation MfNiWrapperPlugin
    
    // Plugin initialization
    - (void)pluginInitialize {
        NSLog(@"MfNiWrapperPlugin - pluginInitialize");
    }
@end
