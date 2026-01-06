FROM golang:1.18-alpine

# set working directory
WORKDIR /app

COPY main.go .

EXPOSE 8080

# tidak perlu lagi app/main.go karna sudah berada di working directory yang di set
CMD go run main.go