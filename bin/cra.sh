#!/usr/bin/env bash

# README.md###Command Environment Variables
CWD=$(dirname $(perl -MCwd -e 'print Cwd::abs_path shift' ${0}))
. ${CWD}/.helpers/init.sh

start() {
    __docker_compose run --service-ports --rm create-react-app start
}

displayHelp() {
    echo ""
    echo "Build commands concerning webpack (to build and dev the React portion of this project)"
    echo ""
    echo "Usage:"
    echo "  sh ${0} compile"
    echo "  sh ${0} dev"
    echo "  sh ${0} --help"
    echo ""
    echo "Options:"
    echo "  -h, --help          Print this help message."
    echo ""
    echo "Commands:"
    echo "  dev                 Starts a webpack-dev-server"
    echo "  compile             Compiles the project to a production-ready bundle"
    echo ""

    exit 0
}

case $# in
  0) displayHelp;;
esac

case $1 in
  --help|-h) displayHelp;;
  start) shift; start;;
  *) displayHelp;;
esac
