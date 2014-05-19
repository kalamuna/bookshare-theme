(function($) {

  /*
  Bookshare is the application module for the theme.
  @param {object} options Constructor Options
   */
  var Bookshare;
  Bookshare = function(options) {
    var DEFAULTS;
    options = options || {};
    DEFAULTS = {
      dropdown: "*[data-toggle=\"dropdown\"]",
      themePath: Drupal.settings.basePath + Drupal.settings.bookshare.themepath || 'sites/all/themes/bookshare'
    };
    this.options = $.extend(DEFAULTS, options);
  };
  Bookshare.prototype.initDropdowns = function() {
    var dropdown;
    dropdown = this.options.dropdown;
    return $(dropdown).dropdown();
  };
  Bookshare.prototype.runA11yToolbar = function() {
    var path;
    if (typeof a11yToolbar !== "undefined" && a11yToolbar !== null) {
      path = this.options.themePath;
      path += '/dist/';
      return a11yToolbar({
        assets: path,
        btnClasses: ["btn", "btn-default", "btn-small"],
        containerClasses: ["btn-group", "btn-group-vertical"]
      });
    }
  };
  Bookshare.prototype.polyfills = function() {
    if (window.Modernizr) {
      Modernizr.load({
        test: Modernizr.flexbox,
        nope: "" + this.options.themePath + "/dist/js/vendor/flexie.min.js"
      });
      Modernizr.load({
        test: Modernizr.mq('only all'),
        nope: "" + this.options.themePath + "/dist/js/vendor/respond.min.js"
      });
      return Modernizr.load({
        test: Modernizr.input.placeholder,
        nope: "" + this.options.themePath + "/ dist/js/vendor/placeholder_polyfill.jquery.min.combo.js"
      });
    }
  };
  Bookshare.prototype.run = function() {
    this.initDropdowns();
    this.runA11yToolbar();
    return this.polyfills();
  };
  return $(function() {
    var bookshareApp;
    bookshareApp = new Bookshare({});
    return bookshareApp.run();
  });
})(jQuery);
