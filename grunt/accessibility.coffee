module.exports =
  sample:
    options:
      accessibilityLevel: "WCAG2A"

    files: [
      expand: true
      cwd: "tests/snapshots"
      src: "*.html"
      dest: "reports/a11y/"
      ext: "-a11y-report.md"
    ]
