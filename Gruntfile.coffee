#global module:false
module.exports = (grunt) ->
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
  appJS.push "js/bookshare.js"

  # load all grunt tasks matching the `grunt-*` pattern
  require("load-grunt-tasks") grunt
  require("load-grunt-config") grunt, {
    conf:
      pkg: "<%= package %>"
      banner: "/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - " + "<%= grunt.template.today(\"yyyy-mm-dd\") %>\n" + "<%= pkg.homepage ? \"* \" + pkg.homepage + \"\\n\" : \"\" %>" + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>;" + " Licensed <%= _.pluck(pkg.licenses, \"type\").join(\", \") %> */\n" + "/*!\n" + "* Bootstrap v3.1.1 (http://getbootstrap.com)\n" + "* Copyright 2011-2014 Twitter, Inc.\n" + "* Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)\n" + "*/\n"
  }
  require("time-grunt") grunt


