#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage:"
    echo "  $0 <OLD_VERSION> <NEW_VERSION>"
    exit 1
fi

OLD_VERSION=$1
NEW_VERSION=$2
REPOSITORY_URL="https://github.com/hugoschool/epitech-typst-theme"

echo "Changes:"
echo "- detail them yourself here!"
echo ""

echo "Commits:"
echo "\`\`\`"
git log --pretty=short --format=%s v$OLD_VERSION...v$NEW_VERSION | tail -n +2
echo "\`\`\`"
echo ""

echo "**Full Changelog**: $REPOSITORY_URL/compare/v$OLD_VERSION...v$NEW_VERSION"
