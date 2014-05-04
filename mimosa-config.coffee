exports.config = {

  modules: [
    'jshint',
    'csslint',
    'server',
    'require',
    'minify-js',
    'minify-css',
    'live-reload',
    'bower',
    'coffeescript',
    'less',
    'copy',
    'testem-require',
    'server-reload'
  ]

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
        'handlebars': [
          'handlebars.js'
        ]
        'semantic': [
          'build/packaged/fonts': '../../fonts/vendor/semantic'
          'build/packaged/images': '../../images/vendor/semantic'
          'build/packaged/css/semantic.css'
          'build/packaged/javascript/semantic.js'
        ]
        'require-hbs': [
          'hbs.js'
        ]
  
  # Adhoc module allows us to execute local project/skeleton based scripts
  # Easily without making them a module. They got injected into the Workflow automatically.
  adhocModule:
    modules: []
  

  # Due to Windows compatibility issues I had to turn this off by default.
  # You can create your own testscript using mimosa testscript and then execute it from the cli
  testemRequire:
    executeDuringBuild: false
    executeDuringWatch: false

  copy:
    extensions: ["js","css","png","jpg","jpeg","gif","html","eot","svg","ttf","woff","otf","yaml","kml","ico","htc","htm","json","txt","xml","xsd","map","md","mp4", "hbs"]
}