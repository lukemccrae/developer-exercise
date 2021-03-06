lrSnippet = require("connect-livereload")(port: 35729)
livereloadMiddleware = (connect, options) ->
  [lrSnippet, connect.static(options.base[0]), connect.directory(options.base[0])]

module.exports = (grunt) ->
  grunt.config "connect",
    options:
      port: 9000
      hostname: "*"
      open: false
      base: "dist/"
    livereload:
      options:
        middleware: livereloadMiddleware

  grunt.loadNpmTasks 'grunt-contrib-connect'
