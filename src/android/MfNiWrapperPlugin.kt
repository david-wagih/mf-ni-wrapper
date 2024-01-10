import org.apache.cordova.CallbackContext
import org.apache.cordova.CordovaPlugin
import org.json.JSONArray
import org.json.JSONException

class MfNiWrapperPlugin : CordovaPlugin() {

    override fun execute(action: String, args: JSONArray, callbackContext: CallbackContext): Boolean {
        println("MfNiWrapperPlugin: execute")
        if (action == "echo") {
            try {
                val message = args.getString(0)
                println("Echo: $message")

                callbackContext.success("Echoed: $message")
                return true
            } catch (e: JSONException) {
                e.printStackTrace()
                callbackContext.error("Error parsing arguments")
                return false
            }
        }
        return false
    }
}
