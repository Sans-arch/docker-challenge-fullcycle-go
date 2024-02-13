FROM golang:alpine3.19 AS builder

WORKDIR /usr/src/app
COPY hello.go .

RUN go build hello.go

FROM scratch
COPY --from=builder /usr/src/app/hello /app/
CMD [ "/app/hello" ]