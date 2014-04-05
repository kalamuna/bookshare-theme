module.exports =
  themeJS:
    options:
      compress: true
      mangle: true
      banner: "<%= banner %>"
    files:
      "dist/js/bookshare.pkg.min.js": "dist/js/bookshare.pkg.js"
