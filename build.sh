#!/usr/bin/env bash
set -eou pipefail

version="${VERSION:-HEAD}"

checkout () {
    git clone https://github.com/UWPR/Comet.git
    cd Comet
    git checkout ${version}
}

main () {
    checkout
    make
    mv comet.exe ../comet
    cd ..
}

main
