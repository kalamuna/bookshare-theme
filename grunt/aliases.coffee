module.exports =
  default: [
      "coffee"
      "jshint"
      "clean:dist"
      "concat"
      "uglify"
      "modernizr"
      "compass:dist"
      "autoprefixer:dist"
      "cssmin:dist"
      ]
  a11y: [
    "clean:sample"
    "htmlSnapshot:sample"
    "accessibility:sample"
    ]

