#!/bin/bash

rm -rf pharo
mkdir pharo
cd pharo
wget -q https://github.com/badetitou/Pharo-LanguageServer/releases/download/v1.0.3/Pharo64-9.0-PLS.zip
wget -q https://files.pharo.org/vm/pharo-spur64/Linux-x86_64/PharoVM-9.0.0-f519c4c-Linux-x86_64-stockReplacement-bin.zip

unzip -q Pharo64*.zip
unzip -q PharoVM*.zip
