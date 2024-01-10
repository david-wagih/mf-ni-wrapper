import UIKit
import NICardManagementSDK
import Combine

// let sdk = NICardManagementAPI(
//             rootUrl: rootUrl,
//             cardIdentifierId: cardIdentifierId,
//             cardIdentifierType: cardIdentifierType,
//             bankCode: bankCode,
//             tokenFetchable: NICardManagementTokenFetchable
// )

@objc(MfNiWrapperPlugin) class MfNiWrapperPlugin : CDVPlugin {
    
    // Your other properties and methods
    
    @objc func echo(_ command: CDVInvokedUrlCommand) {
        let message = command.arguments[0] as? String ?? ""
        print("Echo: \(message)")
        
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Echoed: \(message)")
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    }
}

