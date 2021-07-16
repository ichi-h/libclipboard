#!/bin/sh

dylib="./target/debug/liblibclipboard.dylib"
so="./target/debug/liblibclipboard.so"

if [ -e $dylib ]; then
  ln -s $dylib ../../libclipboard.dylib
fi

if [ -e $so ]; then
  ln -s $so ../../libclipboard.so
fi
