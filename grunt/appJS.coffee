module.exports = ->
  bootstrapJS = [
    "transition.js"
    "alert.js"
    "button.js"
    "carousel.js"
    "collapse.js"
    "dropdown.js"
    "modal.js"
    "tooltip.js"
    "popover.js"
    #'scrollspy.js',
    "tab.js"
    #'affix.js'
  ]

  bootstrapJS.forEach (el, i, array) ->
    array[i] = "bower_components/bootstrap/js/" + el
    return

  appJS = bootstrapJS
  appJS.push "bower_components/bootstrap-accessibility-plugin/plugins/js/bootstrap-accessibility.js"
  appJS.push "bower_components/accessifyhtml5.js/accessifyhtml5.js"
  appJS.push "bower_components/a11y/js/a11y.js"
  appJS.push "js/bookshare.js"
  return appJS
