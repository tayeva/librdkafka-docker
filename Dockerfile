FROM ubuntu:22.04

ARG LIBRDKAFKA_VERSION=2.1.1

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        curl \
    && curl -L https://github.com/confluentinc/librdkafka/archive/refs/tags/v${LIBRDKAFKA_VERSION}.tar.gz | tar -xz \
    && cd librdkafka-${LIBRDKAFKA_VERSION} \
    && ./configure \
    && make \
    && make install \
    && ldconfig \
    && cd .. \
    && rm -rf librdkafka-${LIBRDKAFKA_VERSION}

CMD ["/bin/bash"]