module.exports =
  options:
    debug: true
  vendor:
    dest: 'dist/js/libraries.js'
    src: []
    options:
      shim:
        bootstrap:
          path: '../bower_components/bootstrap/dist/js/bootstrap.js',
          exports: 'bootstrap',
          depends:
            'jquery': 'jQuery'
        bootstrapA11y:
          path: '../bower_components/bootstrap-accessibility-plugin/plugins/js/bootstrap-accessibility.js'
          export: 'bootstrapA11y'
          depends:
            'bootstrap':'bootstrap'
      external:[
        '..bower_components/jquery/jquery.min.js:jQuery',
        '..fakePath/Drupal.js:drupal'
      ]

  dist:
    src: ['../coffee/main.coffee']
    dest:  '../dist/js/bookshare.pkg.js'
    options:
      transform: 'coffeeify'
      external:[
        'bower_components/jquery/jquery.min.js:jquery'
      ]



