#!/bin/sh
set -e

eval $(ssh-agent -s)

echo "$SSH_PRIVATE_KEY" | ssh-add - > /dev/null

exec "$@"