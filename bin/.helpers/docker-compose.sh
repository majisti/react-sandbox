#!/usr/bin/env bash

DOCKER_COMPOSE_FILES=${DOCKER_COMPOSE_FILES:-""}

DOCKER_ARGS="-f ${DOCKER_CWD}/docker-compose.yml -p ${PROJECT_NAME}"

# Wrapper for docker-compose that will combine some variables
# as docker-compose arguments
__docker_compose() {
    if [ $# -eq 0 ]; then
        echo "__docker_compose: called without argument(s)!"
        exit 1
    fi

    echo -e "\n\033[1;34mRunning docker-compose command:\033[0m"
    echo -e "docker-compose ${DOCKER_ARGS} ${@}\n"

    docker-compose ${DOCKER_ARGS} "${@}"
}
