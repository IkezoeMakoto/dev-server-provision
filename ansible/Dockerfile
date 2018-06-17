FROM alpine

WORKDIR /app

RUN apk update && \
    apk add ansible make && \
    rm -rf /var/cache/apk/*

COPY ./ /app

CMD make run