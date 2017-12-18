#!/usr/bin/env bash

# README.md###Command Environment Variables
CWD=$(dirname $(perl -MCwd -e 'print Cwd::abs_path shift' ${0}))
. ${CWD}/.helpers/init.sh

build() {
    __docker_compose build
}

status() {
    __docker_compose ps
}

logs() {
    __docker_compose logs --follow --tail=200 "${@}"
}

displayHelp() {
    echo ""
    echo "This is a helper command to ease access to Docker within this project."
    echo "These are mostly wrappers around multiple docker-compose calls, but"
    echo "you can also use it to easily call the docker-compose bin without having"
    echo "to pass all the parameters required to properly access this project's"
    echo "services."
    echo ""
    echo "Usage:"
    echo "  sh ${0} build"
    echo "  sh ${0} logs"
    echo "  sh ${0} --help"
    echo ""
    echo "Options:"
    echo "  -h, --help          Print this help message."
    echo ""
    echo "Commands:"
    echo "  build               Builds the containers."
    echo "  logs                Displays logs from each container. Maximum of 200 lines."
    echo "  status              Displays the container status (docker-compose ps)"
    echo ""

    exit 0
}

case $# in
  0) displayHelp;;
esac

case $1 in
  --help|-h) displayHelp;;
  build) shift; build;;
  status) shift; status;;
  logs) shift; logs "${@}";;
  *) __docker_compose "${@}";;
esac