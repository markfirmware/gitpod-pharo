
a:=ZnHtmlOutputStream streamContents: [ :html |
  html tag: #html do:  [ html tag: #div with: 'testing'].
].