#!/bin/bash

FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo -e "\n### Vowel frequency by $GITHUB_USER on $TIMESTAMP\n$FREQ_RESULT" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"
