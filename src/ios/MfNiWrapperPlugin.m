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

    // - (void) viewCardDetails:(CDVInvokedUrlCommand*)command
    // {
    //     NSLog(@"MfNiWrapperPlugin - viewCardDetails");
    //     [self.commandDelegate runInBackground:^{
    //         // NSString* payload = [command.arguments objectAtIndex:0];
    //         // NSString* callbackId = command.callbackId;
    //         // NSString* msg = [NSString stringWithFormat: @"MfNiWrapperPlugin - viewCardDetails - payload: %@", payload];
    //         // NSLog(@"%@", msg);
    //         // CDVPluginResult* result = [CDVPluginResult
    //         //                            resultWithStatus:CDVCommandStatus_OK
    //         //                            messageAsString:msg];
    //         // [self.commandDelegate sendPluginResult:result callbackId:callbackId];
    //         [self.viewCardDetails];
    //     }];
    // }
@end
