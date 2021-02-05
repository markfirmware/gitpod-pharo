1 + 1

Metacello new
	baseline: 'JRPC';
	repository: 'github://juliendelplanque/JRPC:master/src';
	load.

server := JRPCServer http
    port: 4000;
    addHandlerNamed: 'sqrt' block: [ :x | x sqrt ];
    yourself.

(JRPCClient http: 'http://localhost:5000')
	callMethod: 'sqrt' arguments: #(4) withId: 1

Metacello new
  githubUser: 'badetitou' project: 'Pharo-LanguageServer' commitish: 'v1.0.0' path: 'src';
  baseline: 'PharoLanguageServer';
  load
