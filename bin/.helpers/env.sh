#!/usr/bin/env bash

# Define all any environment variable in this file
# Allow it to be overridden by shell environment variables
# Example:
# export   name  | env name | default
# export VARIABLE=${VARIABLE:-default}

PROJECT_NAME=${PROJECT_NAME:-react-sandbox}
DOCKER_CWD=${DOCKER_CWD:-$(perl -MCwd -e 'print Cwd::abs_path shift' ${CWD}/../docker)}