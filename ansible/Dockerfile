FROM alpine

WORKDIR /app

RUN apk --update --no-cache add ansible make

COPY ./ /app

CMD make run
