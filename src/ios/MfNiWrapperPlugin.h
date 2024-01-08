#import <Cordova/CDVPlugin.h>
#import NICardManagementSDK

@interface MfNiWrapperPlugin : CDVPlugin

@property (nonatomic, strong) NICardManagementAPI *sdk;

- (void)initializeSDK:(CDVInvokedUrlCommand*)command;
- (void)displayCardDetailsForm:(CDVInvokedUrlCommand*)command;

@end
