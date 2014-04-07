(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=n[o]={exports:{}};t[o][0].call(f.exports,function(e){var n=t[o][1][e];return s(n?n:e)},f,f.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function($) {

  /*
   * Bookshare is the application module for the theme.
   * @param {object} options Constructor Options
   */
  var Bookshare;
  Bookshare = function(options) {
    var DEFAULTS;
    options = options || {};
    DEFAULTS = {
      dropdown: "*[data-toggle=\"dropdown\"]"
    };
    this.options = $.extend(DEFAULTS, options);
  };
  Bookshare.prototype.initDropdowns = function() {
    var dropdown;
    dropdown = this.options.dropdown;
    return $(dropdown).dropdown();
  };
  Bookshare.prototype.run = function() {
    this.initDropdowns();
  };
  return module.exports = Bookshare;
})(jQuery);


},{}],2:[function(require,module,exports){
var Bookshare, bookshare;

Bookshare = require('./bookshare.coffee');

bookshare = new Booksshare();


},{"./bookshare.coffee":1}]},{},[2])