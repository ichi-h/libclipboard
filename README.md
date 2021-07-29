# libclipboard

A dynamic library to operate clipboard, for [ippee / dart_clipboard](https://github.com/ippee/dart_clipboard).

## Installation

Select either method A or B.

### A: Use the existing build files

On your Dart project directory, run the following commands.

```shell
# on Windows
curl -LJO https://github.com/ippee/libclipboard/releases/download/0.2.0/libclipboard.dll

# on macOS
curl -LJO https://github.com/ippee/libclipboard/releases/download/0.2.0/libclipboard.dylib

# on Linux
curl -LJO https://github.com/ippee/libclipboard/releases/download/0.2.0/libclipboard.so
```

### B: Use your own build files

This way is available in the environment which can use Rust.

First, add [ippee / libclipboard](https://github.com/ippee/libclipboard) repository as a submodule.

```shell
git submodule add git@github.com:ippee/libclipboard.git ./tool/libclipboard/
```

Next, build the dynamic library with:

```shell
cd ./tool/libclipboard/
cargo build --release
```

Finally, make the symbolic link to the built file,

```shell
# on Windows
./make_symlink.ps1

# on macOS/Linux
bash ./make_symlink.sh
```

or copy the library to the project directory.

```shell
# on Windows
./copy_lib.ps1

# on macOS/Linux
bash ./copy_lib.sh
```

### Notes

If you publish the Dart application which uses [ippee / dart_clipboard](https://github.com/ippee/dart_clipboard), put the dynamic library in the same directory with the executable.

## License

_libclipboard_ is under the MIT License.

Note that [aweinstock314 / rust-clipboard](https://github.com/aweinstock314/rust-clipboard) is dual-licensed under MIT and Apache2.
