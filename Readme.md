# Setup

## Generate a CmakeList.txt

<!-- https://joshtronic.com/2024/01/14/cmake-compile-commands-json/ -->

Enable Compile commands/database by adding the following to CMakeList.txt

```txt
# Add this line, to enable compile command export
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
```

## Building the project

Use the following just command to build the project

```justfile
just build
```

To build a release build use this command instead

```justfile
just release
```

Refer to [justfile](./justfile) for the definition of both build commands

## Run code

Use the following command to execute the binary for this project after it is build

```justfile
just run
```

Refer to [justfile](./justfile) for the definition of the run command
