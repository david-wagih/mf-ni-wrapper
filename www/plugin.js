var exec = require("cordova/exec");

var PLUGIN_NAME = "MfNiWrapperPlugin";

var MfNiWrapperPlugin = {
  echo: function (phrase, cb) {
    exec(cb, null, PLUGIN_NAME, "echo", [phrase]);
  },

  getDate: function (cb) {
    exec(cb, null, PLUGIN_NAME, "getDate", []);
  },
};

module.exports = MfNiWrapperPlugin;
