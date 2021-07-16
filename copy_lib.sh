#!/bin/sh

fileName="liblibclipboard.dylib"

if [ ! -e $fileName ]; then
  fileName="liblibclipboard.so"
fi

filePath=./target/debug/$fileName

cp $filePath ../../$fileName
