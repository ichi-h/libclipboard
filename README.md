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
cp ./target/debug/libclipboard.dll ../../

# on macOS/Linux
bash ./copy_lib.sh
```

### Case B: Use the existing build files

Coming soon...

## License

_libclipboard_ is under the MIT License.

Note that [aweinstock314 / rust-clipboard](https://github.com/aweinstock314/rust-clipboard) is dual-licensed under MIT and Apache2.
