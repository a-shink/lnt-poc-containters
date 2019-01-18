#!/bin/bash

. ../registry
. repo

BUILD_TAG=${1:-$TAG} 

echo "Build ${REPO}:${BUILD_TAG}"

docker build --no-cache -t "${REPO}:${BUILD_TAG}" .
