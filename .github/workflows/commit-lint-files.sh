#!/bin/bash

hasTypeScriptFiles=`git diff --name-only`
fileTypes='.ts'
if [[ $hasTypeScriptFiles == *"$fileTypes"* ]]; then
    git config --global user.email "shobekhan@yahoo.com"
    git config --global user.name "SB"
    git add .
    git commit -m "Fixed ESLint issues"
    git push
    echo "Ran Commit"
fi