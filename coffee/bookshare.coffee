# global
(($) ->

  ###
  Bookshare is the application module for the theme.
  @param {object} options Constructor Options
  ###
  Bookshare = (options) ->
    options = options or {}
    DEFAULTS = dropdown: "*[data-toggle=\"dropdown\"]"
    @options = $.extend(DEFAULTS, options)
    return


  # Fallback support for adding  dropdowns
  Bookshare::initDropdowns = ->
    dropdown = @options.dropdown
    $(dropdown).dropdown()

  Bookshare::runA11yToolbar = ->
    if a11yToolbar?
      path = Drupal.settings.basePath +  Drupal.settings.bookshare.themepath
      path += '/dist/'
      a11yToolbar(
        assets: path
        btnClasses: [
          "btn"
          "btn-default"
          "btn-small"
        ]
        containerClasses: [
          "btn-group",
          "btn-group-vertical"
        ]
      )

  Bookshare::run = ->
    @initDropdowns()
    @runA11yToolbar()


  bookshareApp = new Bookshare({})
  $ ->
    bookshareApp.run()



) jQuery
