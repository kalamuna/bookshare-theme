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
  Bookshare.prototype.run = function() {
    this.initDropdowns();
  };
  bookshareApp = new Bookshare({});
  $(function() {
    bookshareApp.run();
  });
})(jQuery);
