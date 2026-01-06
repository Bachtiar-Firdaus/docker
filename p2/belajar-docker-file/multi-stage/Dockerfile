#sebagai compiler penyesuaian dengan engin yang mau gunakan sebagai runner
FROM golang:1.18-alpine as builder

WORKDIR /app/
COPY main.go .
RUN go build -o /app/main main.go

#container di running dari bagian ini
FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main ./

EXPOSE 8080

CMD /app/main