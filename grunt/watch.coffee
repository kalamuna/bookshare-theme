module.exports =
  gruntfile:
    files: "<%= jshint.gruntfile.src %>"
    tasks: ["jshint:gruntfile"]

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
  coffee:
    files: "coffee/**/*.coffee"
    tasks: ["coffee:theme"]
