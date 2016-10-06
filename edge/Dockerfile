FROM alpine:edge

MAINTAINER Maciej Lisiewski <maciej.lisiewski@gmail.com>

RUN apk add --no-cache \
        python2 \
        libevent \
        libpq && \
    apk add --no-cache --virtual .build-deps \
        python2-dev \
        postgresql-dev \
        libevent-dev \
        musl-dev \
        gcc && \
    python -m ensurepip && \
    pip install --upgrade pip && \
    pip install https://github.com/dbcli/pgcli/archive/master.zip && \
    apk del .build-deps

ENTRYPOINT ["/usr/bin/pgcli"]