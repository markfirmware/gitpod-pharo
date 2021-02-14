|a|
a:=ZnHtmlOutputStream streamContents: [ :html |
  html tag: #html do:  [ html tag: #div with: 'testing'].
].(FileSystem disk  / 'workspace/gitpod-pharo/docs/index.html') writeStream  nextPutAll: a;  close.