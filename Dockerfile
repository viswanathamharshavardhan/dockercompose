FROM golang:1.12.7-alpine3.9
MAINTAINER harshateju

RUN mkdir /app

ADD . /app
WORKDIR /app

RUN CGO_ENABLED=0 GOOS=linux go build -o main ./...
CMD ["./main"]
