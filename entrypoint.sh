#!/bin/bash

INPUT_BRANCH=${INPUT_BRANCH:-GITHUB_REF}

BRANCH=$(echo ${INPUT_BRANCH} | sed -e "s/refs\/heads\///g")
IS_RELEASE_BRANCH='NO'

# if contains release/
if [ $(echo ${INPUT_BRANCH} | sed -e "s/release\///g") != ${INPUT_BRANCH} ]; then
  IS_RELEASE_BRANCH='YES'
fi;

echo "::set-output name=branch::${BRANCH}"
echo "::set-output name=is_release_branch::${IS_RELEASE_BRANCH}"
