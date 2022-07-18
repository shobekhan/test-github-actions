#!/bin/sh

hasTypeScriptFiles=`git diff --name-only`

if [[ $hasTypeScriptFiles == *".ts"* ]]; then
    git config --global user.email "shobekhan@yahoo.com"
    git config --global user.name "SB"
    git add .
    git commit -m "Fixed ESLint issues"
    git push
fi