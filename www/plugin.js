var exec = require("cordova/exec");

var PLUGIN_NAME = "EchoPlugin";

var EchoPlugin = {
  echo: function (message, successCallback, errorCallback) {
    exec(successCallback, errorCallback, PLUGIN_NAME, "echo", [message]);
  },
};

module.exports = EchoPlugin;
