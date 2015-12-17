#!/bin/bash -e

echo "Release a new version"
git tag -l
cat VERSION

git add .
git commit -m "Release v$(cat VERSION)"
git tag v$(cat VERSION)
git push origin --tags
