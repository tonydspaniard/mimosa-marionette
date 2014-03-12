exports.config = {

  modules: ['jshint', 'csslint', 'server', 'require', 'minify-js', 'minify-css', 'live-reload', 'bower', 'coffeescript', 'less', 'copy', 'testem-require', 'server-reload', 'es6-module-transpiler']

  server:
    views:
      path: 'server/views'

  liveReload:
    additionalDirs: [
      'server/views'
    ]

  bower:
    copy:
      mainOverrides:
        'semantic': [
          'build/packaged/fonts': '../../fonts/vendor/semantic'
          'build/packaged/images': '../../images/vendor/semantic'
          'build/packaged/css/semantic.css'
          'build/packaged/javascript/semantic.js'
        ]
        'require-hbs': [
          'hbs.js'
        ]
        'handlebars': [
          'handlebars.js'
        ]

  testemRequire:
    executeDuringBuild: false
    executeDuringWatch: false

  copy:
    extensions: ["js","css","png","jpg","jpeg","gif","html","eot","svg","ttf","woff","otf","yaml","kml","ico","htc","htm","json","txt","xml","xsd","map","md","mp4", "hbs"]
}