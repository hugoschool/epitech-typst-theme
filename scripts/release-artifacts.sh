#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage:"
    echo "  $0 <VERSION>"
    exit 1
fi

VERSION=$1

make -C .

typst compile examples/package.typ
typst compile examples/slides.typ --root .
typst compile examples/subject.typ --root .

gh release upload -R hugoschool/epitech-typst-theme $VERSION examples/package.pdf examples/slides.pdf examples/subject.pdf

