var exec = require("cordova/exec");

var PLUGIN_NAME = "MfNiWrapperPlugin";

var MfNiWrapperPlugin = {
  initializeSDK: function (
    rootUrl,
    cardIdentifierId,
    cardIdentifierType,
    bankCode,
    cb
  ) {
    exec(cb, null, PLUGIN_NAME, "initializeSDK", [
      rootUrl,
      cardIdentifierId,
      cardIdentifierType,
      bankCode,
    ]);
  },

  displayCardDetailsForm: function (cb) {
    exec(cb, null, PLUGIN_NAME, "displayCardDetailsForm", []);
  },
};

module.exports = MfNiWrapperPlugin;
