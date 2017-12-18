#!/usr/bin/env bash

# README.md###Command Environment Variables
CWD=$(dirname $(perl -MCwd -e 'print Cwd::abs_path shift' ${0}))
. ${CWD}/.helpers/init.sh

__docker_compose run node yarn install