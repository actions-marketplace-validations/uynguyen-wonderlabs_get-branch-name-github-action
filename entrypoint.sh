#!/bin/bash

BRANCH=$(echo ${GITHUB_REF} | sed -e "s/refs\/heads\///g")
IS_RELEASE_BRANCH='NO'

# if contains release/
if [ $(echo ${GITHUB_REF} | sed -e "s/release\///g") != ${GITHUB_REF} ]; then
  IS_RELEASE_BRANCH='YES'
fi;

echo "::set-output name=branch::${BRANCH}"
echo "::set-output name=is_release_branch::${IS_RELEASE_BRANCH}"
