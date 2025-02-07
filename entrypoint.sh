#!/bin/bash

echo "=========="

git config --global user.name "${GITUB_ACTOR}"
git config --global user.emai "${INPUT_EMAIL}"
git commit --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "=========="

