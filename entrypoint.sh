#!/bin/bash

echo "=========="

echo '${GITUB_ACTOR} is: '
echo "${GITUB_ACTOR}"
echo '${INPUT_EMAIL} is: '
echo "${INPUT_EMAIL}"

git config --global user.name "${GITUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "=========="

