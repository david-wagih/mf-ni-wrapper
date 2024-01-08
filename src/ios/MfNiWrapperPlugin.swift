import NICardManagementSDK
import Cordova

@objc(MfNiWrapperPlugin)
class MfNiWrapperPlugin: CDVPlugin {

    var sdk: NICardManagementAPI?

    // Plugin initialization
    override func pluginInitialize() {
        print("MfNiWrapperPlugin - pluginInitialize")
    }

    // Initialize the NICardManagementAPI with required parameters
    @objc(initializeSDK:)
    func initializeSDK(_ command: CDVInvokedUrlCommand) {
        guard let rootUrl = command.argument(at: 0) as? String,
              let cardIdentifierId = command.argument(at: 1) as? String,
              let cardIdentifierType = command.argument(at: 2) as? String,
              let bankCode = command.argument(at: 3) as? String else {
            return
        }

        self.sdk = NICardManagementAPI(
            rootUrl: rootUrl,
            cardIdentifierId: cardIdentifierId,
            cardIdentifierType: cardIdentifierType,
            bankCode: bankCode,
            tokenFetchable: NICardManagementTokenFetchable
        )
    }

    // Display the card details form
    @objc(displayCardDetailsForm:)
    func displayCardDetailsForm(_ command: CDVInvokedUrlCommand) {
        self.sdk?.displayCardDetailsForm(withViewController: self) { successResponse, errorResponse in
            // handle error and success
        }
    }
}
