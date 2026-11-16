#!/bin/bash
set -e

REPO_URL="https://github.com/nikitarostorguev8837-alt/shvirtd-example-python.git"
APP_DIR="/opt/shvirtd-example-python"

if [ -d "$APP_DIR/.git" ]; then
    git -C "$APP_DIR" pull
else
    git clone "$REPO_URL" "$APP_DIR"
fi

cd "$APP_DIR"
docker compose up -d --build
