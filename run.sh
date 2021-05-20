#!/bin/sh

HOST_CACHE=~/renv/cache
CONTAINER_CACHE=/renv/cache
DOCKER_IMAGE_NAME=shiny-encuestas

mkdir -p ${HOST_CACHE}
sudo docker run --rm -e "RENV_PATHS_CACHE=${CONTAINER_CACHE}" -v "${HOST_CACHE}:${CONTAINER_CACHE}" -p 3838:3838 ${DOCKER_IMAGE_NAME} R -s -e 'renv::restore(); shiny::runApp(host = "0.0.0.0", port = 3838)'
