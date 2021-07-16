#!/bin/sh

current=`pwd`

cd ../../

dylib="./tool/libclipboard/target/debug/liblibclipboard.dylib"
so="./tool/libclipboard/target/debug/liblibclipboard.so"

if [ -e $dylib ]; then
  ln -s $dylib ./libclipboard.dylib
fi

if [ -e $so ]; then
  ln -s $so ./libclipboard.so
fi

cd $current
