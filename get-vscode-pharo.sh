#!/bin/bash

account=badetitou
mkdir -p github.com/$account
cd github.com/$account
for repo in vscode-pharo Pharo-LanguageServer
do
   git clone https://github.com/$account/$repo
done
