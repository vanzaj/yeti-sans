var stylus = require('stylus'),
    path = require('path');

exports = module.exports = plugin;
exports.version = require(path.join(__dirname, './package.json')).version;
exports.path = path.join(__dirname, 'styl');

function plugin() {
  return function (style) {
    style.include(exports.path);
  };
}
