#!/bin/sh

current=`pwd`

fileName="liblibclipboard.dylib"
filePath=./tool/libclipboard/target/debug/$fileName

if [ ! -e $filePath ]; then
  fileName="liblibclipboard.so"
  filePath=./tool/libclipboard/target/debug/$fileName
fi

cd ../../
ln -s $filePath ./$fileName

cd $current
