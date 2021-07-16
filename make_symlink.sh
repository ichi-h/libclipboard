#!/bin/sh

current=`pwd`

fileName="liblibclipboard.dylib"

if [ ! -e $fileName ]; then
  fileName="liblibclipboard.so"
fi

filePath=./tool/libclipboard/target/debug/$fileName

cd ../../
ln -s $filePath ./$fileName

cd $current
