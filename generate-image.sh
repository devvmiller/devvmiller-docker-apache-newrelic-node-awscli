#!/usr/bin/env bash

set -x

function get_php_node_image_from_circleci() {
    git clone https://github.com/circleci/circleci-images
    cd circleci-images
    git checkout 5d28b25
    cd php
    ./generate-images
    cd ../../
    cat circleci-images/php/images/7.3.9-cli-stretch/node/Dockerfile > $1
}

get_php_node_image_from_circleci CircleCi.Dockerfile
