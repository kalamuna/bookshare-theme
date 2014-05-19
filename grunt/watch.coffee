module.exports =
  grunt:
    files: [
      "Gruntfile.coffee"
      "grunt/**/*"
    ]
    tasks: ["coffeelint:grunt"]

  themeJS:
    files: "js/**/*.js"
    tasks: [
      "jshint:themeJS"
      "concat:themeJS"
      "uglify:themeJS"
    ]

  sass:
    files: "scss/**/*.scss"
    tasks: [
      "compass:devel"
      "autoprefixer"
    ]
  appCoffee:
    files: "coffee/**/*.coffee"
    tasks: [
      "coffeelint:appCoffee",
      "coffee:appCoffee"
    ]
  liveReload:
    files: "dist/**/*"
    options:
      livereload: true
  styleguide:
    files: 'docs/**/*'
    tasks: 'jekyll:styleguide'
