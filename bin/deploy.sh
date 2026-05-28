#!/bin/sh

set -e

DEST="${DEST:-eowen.me:/site}"

npm run build && exec rclone sync _site/ $DEST
