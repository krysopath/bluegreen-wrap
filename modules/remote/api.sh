#!/bin/bash

set -e
eval "$(jq -r '@sh "URL=\(.url)"')"

RESULT="$(curl -sL $URL|jq -rc .results[].login)"

jq -n --arg res "$RESULT" '{"raw":$res}'
