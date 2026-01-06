#pull image
FROM alpine:3

LABEL author="Bachtiar Firdaus"
LABEL github="https://github.com/bachtiar-firdaus" linkedIn="https://www.linkedin.com/in/bachtiar-firdaus-64b35419b/"

#perintah run ketika build image
RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"

#perintah comand dijalankan ketika excecute container
CMD cat "hello/world.txt"


# dan hanya muncul di bagian inspect
# docker image inspect daus/label