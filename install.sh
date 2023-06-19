#!/usr/bin/env bash

curl -sO https://raw.githubusercontent.com/ast21/composer-dev/main/composer-dev.sh
mv composer-dev.sh /usr/local/bin/composer-dev
chmod +x /usr/local/bin/composer-dev

curl -sO https://raw.githubusercontent.com/ast21/composer-dev/main/composer-local.sh
mv composer-local.sh /usr/local/bin/composer-local
chmod +x /usr/local/bin/composer-local

echo "composer-dev command success installed."
echo "composer-local command success installed."
