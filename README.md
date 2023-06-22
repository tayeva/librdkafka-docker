# librdkafka-docker

This repository contains the source code for building the [tayeva/librdkafka](https://hub.docker.com/repository/docker/tayeva/librdkafka/general) docker image. It prepares an ubuntu based docker image compiling the [Confluent Apache Kafka C/C++ library](https://github.com/confluentinc/librdkafka).

## Building

Find the version of `librdkafka` that you would like to build and provide it as a command line argument to the build script.

For example:

`./build.sh 2.1.1`

## Examples

There is an example of a simple producer-consumer application utilizing this docker image [here](https://github.com/tayeva/librdkafka-examples-cpp/tree/main/simple-producer-consumer).