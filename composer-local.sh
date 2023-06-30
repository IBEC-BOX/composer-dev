#!/usr/bin/env bash

PACKAGES_PATH='composer-packages'
REPOSITORIES="{
    \"type\": \"path\",
    \"url\": \"$PACKAGES_PATH/*/*\",
    \"options\": {
        \"symlink\": true
    }
}"

cd `pwd`
if [ -f composer.json ]; then
  jq ".repositories[0] = $REPOSITORIES" composer.json > composer.local.json
  COMPOSER=composer.local.json composer "$@"
else
  echo "File \"composer.json\" does not exist."
fi