FROM golang:1.18-alpine

# set working directory
WORKDIR /app

RUN addgroup -S pzngroup
RUN adduser -S -D -h /app pznuser pzngroup
RUN chown -R pznuser:pzngroup /app
USER pznuser

COPY main.go /app

EXPOSE 8080

# tidak perlu lagi app/main.go karna sudah berada di working directory yang di set
CMD go run main.go