#
# User: code house
# Date: 2016/07/25
#
gulp = require('gulp')
favicons = require('gulp-favicons')

gulp.task 'favicons', ->
  gulp.src('./logo/codehouse_logo.png')
  .pipe(favicons({
    appName: "logo",
    appDescription: "code-house.jp logo",
    developerName: "code house",
    developerURL: "http://code-house.jp/",
    background: "#666666",
    path: "/",
    url: "http://code-house.jp/",
    display: "standalone",
    orientation: "portrait",
    version: 1.0,
    logging: false,
    online: false,
    html: "favicons.html",
    pipeHTML: true,
    replace: true    
  }))
  .pipe(gulp.dest('./favicon/'))
