#import NICardManagementSDK
#import <Cordova/CDVAvailability.h>
#import "MfNiWrapperPlugin.swift"

@implementation MfNiWrapperPlugin

// Plugin initialization
- (void)pluginInitialize {
    NSLog(@"MfNiWrapperPlugin - pluginInitialize");
}

// Initialize the NICardManagementAPI with required parameters
- (void)initializeSDK:(CDVInvokedUrlCommand*)command {
    NSString* rootUrl = [command.arguments objectAtIndex:0];
    NSString* cardIdentifierId = [command.arguments objectAtIndex:1];
    NSString* cardIdentifierType = [command.arguments objectAtIndex:2];
    NSString* bankCode = [command.arguments objectAtIndex:3];

    self.sdk = [[NICardManagementAPI alloc] initWithRootUrl:rootUrl
                                        cardIdentifierId:cardIdentifierId
                                      cardIdentifierType:cardIdentifierType
                                                bankCode:bankCode
                                         tokenFetchable:NICardManagementTokenFetchable];
}


@end