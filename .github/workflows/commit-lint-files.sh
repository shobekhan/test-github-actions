#!/bin/sh

$diff = git diff --name-only
sourceDiff = $diff | Where-Object { $_ -match '^src/' -or $_ -match '^__tests__/' }

if [ sourceDiff.Length -gt 0 ]
then
  git config --global user.email "shobekhan@yahoo.com"
  git config --global user.name "SB"
  git add .
  git commit -m "Fixed ESLint issues"
  git push
pwd
fi
