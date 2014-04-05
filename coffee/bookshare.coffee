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

  Bookshare::run = ->
    @initDropdowns()
    return

  bookshareApp = new Bookshare({})
  $ ->
    bookshareApp.run()
    return

  return
) jQuery
