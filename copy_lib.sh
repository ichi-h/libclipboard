#!/bin/sh

fileName="liblibclipboard.dylib"
filePath=./target/debug/$fileName

if [ ! -e $filePath ]; then
  fileName="liblibclipboard.so"
  filePath=./target/debug/$fileName
fi

cp $filePath ../../$fileName
