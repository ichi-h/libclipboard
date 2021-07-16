# libclipboard

A dynamic library to operate clipboard, for [ippee / dart_clipboard](https://github.com/ippee/dart_clipboard).

## Installation

### Case A: Use your own build files

On your Dart project directory, run the following commands.

```shell
mkdir ./tool/
git submodule add git@github.com:ippee/libclipboard.git ./tool/libclipboard/

cd ./tool/libclipboard/
cargo build

# on Windows
New-Item -Type SymbolicLink ../../libclipboard.dll -Value ./target/debug/libclipboard.dll

# on macOS/Linux
bash ./make_symlink.sh
```

### Case B: Use the existing build files

Coming soon...
