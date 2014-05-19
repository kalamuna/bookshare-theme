# global
(($) ->

  ###
  Bookshare is the application module for the theme.
  @param {object} options Constructor Options
  ###
  Bookshare = (options) ->
    options = options or {}
    DEFAULTS =
      dropdown: "*[data-toggle=\"dropdown\"]"
      themePath: Drupal.settings.basePath +  Drupal.settings.bookshare.themepath || 'sites/all/themes/bookshare'
    @options = $.extend(DEFAULTS, options)
    return


  # Fallback support for adding  dropdowns
  Bookshare::initDropdowns = ->
    dropdown = @options.dropdown
    $(dropdown).dropdown()

  Bookshare::runA11yToolbar = ->
    if a11yToolbar?
      path = @options.themePath
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

  Bookshare::polyfills = ->
    if(window.Modernizr)
      Modernizr.load(
        test: Modernizr.flexbox
        nope:
          "#{@options.themePath}/dist/js/vendor/flexie.min.js"
      )
      Modernizr.load(
        test: Modernizr.mq('only all')
        nope:
          "#{@options.themePath}/dist/js/vendor/respond.min.js"
      )
      Modernizr.load(
        test: Modernizr.input.placeholder
        nope:
          "#{@options.themePath}/
          dist/js/vendor/placeholder_polyfill.jquery.min.combo.js"
      )




  Bookshare::run = ->
    @initDropdowns()
    @runA11yToolbar()
    @polyfills()


  $ ->
    bookshareApp = new Bookshare({})
    bookshareApp.run()



) jQuery
