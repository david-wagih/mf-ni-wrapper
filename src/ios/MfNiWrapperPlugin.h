#import <Cordova/CDVPlugin.h>
#import <NICardManagementSDK/NICardManagementSDK.h>

@interface MfNiWrapperPlugin : CDVPlugin

@property(nonatomic, strong) NICardManagementAPI *sdk;

- (void)initializeSDK:(CDVInvokedUrlCommand *)command;
- (void)displayCardDetailsForm:(CDVInvokedUrlCommand *)command;

@end
