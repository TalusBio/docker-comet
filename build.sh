#!/usr/bin/env bash
set -eou pipefail

version="${VERSION:-HEAD}"

checkout () {
    git clone https://github.com/UWPR/Comet.git
    git checkout ${version}
    cd Comet
}

main () {
    checkout
    make
    mv comet.exe ../comet
    cd ..
}

main
