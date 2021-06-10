#!/bin/bash

# Exit if any of the intermediate steps fail
set -e
# jq will ensure that the values are properly quoted
# and escaped for consumption by the shell.
eval "$(jq -r '@sh "URL=\(.url)"')"

# Placeholder for whatever data-fetching logic your script implements
RESULT="$(curl -sL $URL|jq -rc .results[].login.username)"

jq -n --arg res "$RESULT" '{"json":$res}'
