#!/bin/sh

set -e

npm run build && exec rclone sync _site/ "${DEST:-eowen.me:/site}"
