import Foundation

@objc(MfNiWrapperPlugin)
class MfNiWrapperPlugin: CDVPlugin {

    @objc(echo:)
    func echo(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )

        guard let message = command.argument(at: 0) as? String,
              !message.isEmpty else {
            pluginResult = CDVPluginResult(
                status: CDVCommandStatus_ERROR,
                messageAs: "Expected one non-empty string argument."
            )
            self.commandDelegate.send(
                pluginResult,
                callbackId: command.callbackId
            )
            return
        }

        // Display toast notification (using modern approach for iOS 13+)
        let alertController = UIAlertController(
            title: "",
            message: message,
            preferredStyle: .alert
        )
        self.viewController?.present(alertController, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                alertController.dismiss(animated: true)
            }
        }

        pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK,
            messageAs: message
        )

        self.commandDelegate.send(
            pluginResult,
            callbackId: command.callbackId
        )
    }
}
