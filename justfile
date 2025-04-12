# just manual: <https://github.com/casey/just/#readme>

set ignore-comments

_default:
    @just --list

build:
    cmake --build build

run:
    # Adding a - at the beginning of a line makes just ignore non zero exit codes
    - ./build/bin/MyProject

configure_release:
    cmake -B build -DCMAKE_BUILD_TYPE=Release

build_release:
    cmake --build build --config Release

release:
    just configure_release
    just build_release
