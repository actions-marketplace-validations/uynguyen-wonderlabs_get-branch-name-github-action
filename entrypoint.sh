#!/bin/bash

BRANCH=$(echo ${GITHUB_REF} | sed -e "s/refs\/heads\///g")
IS_RELEASE_BRANCH=0

# if contains release/
if [ $(echo ${GITHUB_REF} | sed -e "s/release\///g") != ${GITHUB_REF} ]; then
  IS_RELEASE_BRANCH=1
fi;

echo "::set-output name=branch::${BRANCH}"
echo "::set-output name=isReleaseBranch::${IS_RELEASE_BRANCH}"
