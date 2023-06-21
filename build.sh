#!/bin/bash

VERSION=$1

docker build -t librdkafka:$VERSION --build-arg LIBRDKAFKA_VERSION=$VERSION .
