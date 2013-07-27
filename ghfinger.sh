#!/bin/sh

NAME="$1"

curl -s "https://raw.github.com/$NAME/ghfinger/master/.plan"
