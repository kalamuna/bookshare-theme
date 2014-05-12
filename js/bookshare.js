(function($) {

  /*
  Bookshare is the application module for the theme.
  @param {object} options Constructor Options
   */
  var Bookshare, bookshareApp;
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
  Bookshare.prototype.runA11yToolbar = function() {
    var path;
    if (typeof a11yToolbar !== "undefined" && a11yToolbar !== null) {
      path = Drupal.settings.basePath + Drupal.settings.bookshare.themepath;
      path += '/dist/';
      return a11yToolbar({
        assets: path,
        btnClasses: ["btn", "btn-default", "btn-small"],
        containerClasses: ["btn-group", "btn-group-vertical"]
      });
    }
  };
  Bookshare.prototype.run = function() {
    this.initDropdowns();
    return this.runA11yToolbar();
  };
  bookshareApp = new Bookshare({});
  return $(function() {
    return bookshareApp.run();
  });
})(jQuery);
