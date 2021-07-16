# libclipboard

A dynamic library to operate clipboard, for [ippee / dart_clipboard](https://github.com/ippee/dart_clipboard).

## Installation

### Case A: Use the existing build files

On your Dart project directory, run the following commands.

```shell
# on Windows
curl -sLJO https://github.com/ippee/libclipboard/releases/download/0.1.0/libclipboard.dll

# on macOS
curl -sLJO https://github.com/ippee/libclipboard/releases/download/0.1.0/libclipboard.dylib

# on Linux
curl -sLJO https://github.com/ippee/libclipboard/releases/download/0.1.0/libclipboard.so
```

### Case B: Use your own build files

This way is available in the environment which can use Rust.

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

### Note

If you publish the Dart application which uses [ippee / dart_clipboard](https://github.com/ippee/dart_clipboard), put the dynamic library in the same directory with the executable.

## License

_libclipboard_ is under the MIT License.

Note that [aweinstock314 / rust-clipboard](https://github.com/aweinstock314/rust-clipboard) is dual-licensed under MIT and Apache2.
