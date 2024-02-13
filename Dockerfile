FROM golang:alpine3.19

WORKDIR /usr/src/app

COPY hello-go.go .

ENTRYPOINT [ "go", "run", "hello-go.go" ]