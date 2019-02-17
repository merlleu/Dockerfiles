#!/bin/bash

set -e
set -x

NETWORK="--net l"

RESTART="--restart always"

function stop {
  containers=($(docker ps -aq --filter name=$1))
  for container in "${containers[@]}"; do
    docker stop $container
    docker rm $container
  done
}

VOLUMES="-v /etc/letsencrypt:/etc/certs:ro"
VOLUMES="${VOLUMES} -v /opt/nginx/etc/nginx:/etc/nginx:ro"
VOLUMES="${VOLUMES} -v /opt/nginx/html:/var/www/html:ro"
VOLUMES="${VOLUMES} -v /opt/nginx/var/log/nginx:/var/log/nginx"
VOLUMES="${VOLUMES} -v /opt/php/var/run/php-fpm:/opt/php/var/run/php-fpm:ro"
VOLUMES="${VOLUMES} -v /opt/php/var/www:/opt/php/var/www"

PORTS="-p 80:80"
PORTS="${PORTS} -p 443:443"

NAME=nginx
IMAGE_NAME=merlleu/rpi-nginx

stop ${NAME}

docker run -d --name ${NAME} ${PORTS} ${VOLUMES} ${NETWORK} ${IMAGE_NAME}
