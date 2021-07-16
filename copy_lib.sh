#!/bin/sh

dylib="./target/release/liblibclipboard.dylib"
so="./target/release/liblibclipboard.so"

if [ -e $dylib ]; then
  cp $dylib ../../libclipboard.dylib
fi

if [ -e $so ]; then
  cp $so ../../libclipboard.so
fi
