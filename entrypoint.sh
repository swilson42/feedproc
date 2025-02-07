#!/bin/bash

echo "=========="

echo '${GITHUB_ACTOR} is: '
echo "${GITHUB_ACTOR}"
echo '${INPUT_EMAIL} is: '
echo "${INPUT_EMAIL}"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "=========="

