module.exports =
  options:
    sassDir: "scss"
    cssDir: "dist/css"

  dist:
    options:
      force: true
      outputStyle: "expanded"
      environment: "production"

  devel:
    options:
      outputStyle: "expanded"
      trace: true
      environment: "development"
