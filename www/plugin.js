var exec = require("cordova/exec");

var PLUGIN_NAME = "MfNiWrapperPlugin";

var MfNiWrapperPlugin = {
  echo: function (message, successCallback, errorCallback) {
    exec(successCallback, errorCallback, PLUGIN_NAME, "echo", [message]);
  },
};

module.exports = MfNiWrapperPlugin;
