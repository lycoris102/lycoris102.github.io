# Get a personal access token
# Settings > Developer Settings > Personal Access Tokens > 'Generate new token'
# Give the token 'repo' access
# Take note of the token
# Fill in <FIELDS> below
# Ensure script is executable with chmod +x ./rebuild.sh

#!/bin/bash

username=lycoris102
token=47e7a642293f1b2a6f675d51abf123f4fc985f02

curl -u $username:$token -X POST https://api.github.com/repos/$username/$username.github.io/pages/builds -H "Accept: application/vnd.github.mister-fantastic-preview+json"
