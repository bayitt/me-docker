#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --ansi never"

$COMPOSE run certbot renew 