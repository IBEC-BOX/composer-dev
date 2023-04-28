#!/usr/bin/env bash

curl -sO https://raw.githubusercontent.com/ast21/composer-dev/main/composer-dev.sh
mv composer-dev.sh /usr/local/bin/composer-dev
chmod +x /usr/local/bin/composer-dev

echo "composer-dev command success installed."