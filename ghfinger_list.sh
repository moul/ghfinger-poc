#!/bin/sh

curl -H 'Accept: application/vnd.github.preview.text-match+json' https://api.github.com/search/repositories?q=ghfinger+in:name
