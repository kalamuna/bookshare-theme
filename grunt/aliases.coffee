module.exports =
  default: [
      "coffee"
      "jshint"
      "clean:dist"
      "concat"
      "concurrent:uglifyModernizrCompass"
      "imagemin:dist"
      "autoprefixer:dist"
      "cssmin:dist"
      ]
  a11y: [
    "clean:sample"
    "htmlSnapshot:sample"
    "accessibility:sample"
    ]
  styleguide: [
    'default'
    'copy:styleguide'
    'jekyll:styleguide'
  ]
