#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage:"
    echo "  ./bump_version.sh <OLD_VERSION> <NEW_VERSION>"
    exit 1
fi

OLD_VERSION=$1
NEW_VERSION=$2

sed -i "s/VERSION	:=	$OLD_VERSION/VERSION	:=	$NEW_VERSION/" Makefile
echo "Makefile was bumped to $NEW_VERSION"

sed -i "s/version = \"$OLD_VERSION\"/version = \"$NEW_VERSION\"/" typst.toml
echo "typst.toml was bumped to $NEW_VERSION"

sed -i "s/@local\/epitech-theme:$OLD_VERSION/@local\/epitech-theme:$NEW_VERSION/" examples/package.typ
echo "examples/package.typ was bumped to $NEW_VERSION"

mapfile -t modified_files < <(git diff --name-status | cut -f2)

# https://stackoverflow.com/a/8574392
containsElement() {
    local e match="$1"
    shift
    for e; do [[ "$e" == "$match" ]] && return 0; done
    return 1
}

checkForGitFileUpdate() {
    if ! containsElement $1 "${modified_files[@]}"; then
        echo "$1 wasn't changed in git"
        exit 1
    fi
}

checkForGitFileUpdate "Makefile"
checkForGitFileUpdate "typst.toml"
checkForGitFileUpdate "examples/package.typ"
