exports.config =
  minMimosaVersion:'2.0.0'

  modules: [
    'server'
    'require'
    'minify-js'
    'minify-css'
    'live-reload'
    'combine'
    'requirebuild-include'
    'requirebuild-textplugin-include'
    'bower'
    'csslint'
    'jshint'
    'copy'
  ]

  watch:
    compiledDir: 'built'
    javascriptDir: 'scripts/app'

  requireBuildTextPluginInclude:
    pluginPath: 'text'
    extensions: ['html']

  vendor:
    javascripts: 'scripts/vendor'
    stylesheets: 'styles/vendor'

  requireBuildInclude:
    folder:"scripts"
    patterns: ['app/**/*.js', 'vendor/durandal/**/*.js']

  bower:
    copy:
      mainOverrides:
        "bootstrap": [
          { "dist/fonts": "../../fonts" }
          "dist/js/bootstrap.js"
          "dist/css/bootstrap.css"
        ]
        "durandal": [
          { js: "durandal" }
          { css: "durandal" }
        ]
        "durandal-almond":[
          { "almond.js": "almond-custom.js" }
        ]
        "font-awesome": [
          { fonts: "../../fonts" }
          "css/font-awesome.css"
        ]
        "jquery":[
          "jquery.js"
        ]
        "knockout.js":[
          "knockout.debug.js"
        ]

  combine:
    folders: [
      {
        folder:'styles'
        output:'styles/vendor.css'
        order: [
          'vendor/bootstrap/bootstrap.css'
          'vendor/font-awesome/font-awesome.css'
          'vendor/durandal/durandal.css'
        ]
      }
    ]

  server:
    defaultServer:
      enabled: true
      onePager: true
    views:
      compileWith: 'html'
      extension: 'html'

  require:
    optimize:
      overrides:
        name: '../vendor/almond-custom'
        inlineText: true
        stubModules: ['text']
        pragmas:
          build: true
