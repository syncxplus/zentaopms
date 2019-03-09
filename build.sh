#!/usr/bin/env bash
make clean pms
IMAGE=onlymaker/zentao:`head -n 1 ONLYMAKER`
docker build . -t ${IMAGE}
docker push ${IMAGE}
docker rmi ${IMAGE}
make clean
