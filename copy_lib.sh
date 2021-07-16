#!/bin/sh

dylib="./target/debug/liblibclipboard.dylib"
so="./target/debug/liblibclipboard.so"

if [ -e $dylib ]; then
  cp $dylib ../../libclipboard.dylib
fi

if [ -e $so ]; then
  cp $so ../../libclipboard.so
fi
