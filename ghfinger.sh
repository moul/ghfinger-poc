#!/bin/sh

if [ -z "$1" ]; then
    echo "usage: $0 <github-user-name>"
    exit 1
fi

NAME="$1"

curl_default() {
    url="$1"
    default="$2"
    curl -s --head "$url" | head -n 1 | grep 404 >/dev/null && echo "$default" || curl -s "$url"
}

echo "github info"
curl -s "https://api.github.com/users/$NAME"

echo "user.json file"
curl_default "https://raw.github.com/$NAME/ghfinger/master/user.json" "No user.json file"

echo ".plan file"
curl_default "https://raw.github.com/$NAME/ghfinger/master/.plan" "No .plan file"

echo ".project file"
curl_default "https://raw.github.com/$NAME/ghfinger/master/.project" "No .project file"

exit 0
