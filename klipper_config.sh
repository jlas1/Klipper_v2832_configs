#!/usr/bin/env bash

cd "~/klipper_config" || exit
if ! git diff --quiet HEAD || git status --short; then
    git add .
    git commit -m "klipper config backup - $(date -u)"
    git push origin master
fi
