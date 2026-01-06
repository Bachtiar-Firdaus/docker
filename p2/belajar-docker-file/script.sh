docker build -t daus/from from
docker build -t daus/run run
docker image rm  daus/run 
docker build -t  daus/run run --progress=plain --no-cache

docker image ls | Select-String 'daus/run'

# untuk meliahat detail container bisa dengan inspect
docker image inspect daus/cmd
docker container create --name testingcmd daus/cmd
docker container start testingcmd
docker logs -f testingcmd

docker container create --name testingadd daus/add
docker container start testingadd
docker logs -f testingadd

docker build -t daus/copy copy
docker container create --name testingcopy daus/copy
docker container start testingcopy
docker logs -f testingcopy

docker build -t daus/ignore ignore
docker container create --name testingignore daus/ignore; docker container start testingignore; docker logs -f testingignore

docker image inspect daus/expose
docker build -t daus/expose expose; 
docker container create --name testingexpose -p 8080:8080 daus/expose:latest
docker container start testingexpose; 
docker inspect testingexpose

docker build -t daus/env env
docker container create --name testingenv -p 8080:8080 daus/env
docker container start testingenv
docker inspect testingenv

docker container create --name testingenv9090 --env APP_PORT=9090 -p 9090:9090 daus/env

docker build -t daus/volume-instruction volume-instruction
docker container create --name volumeIns -p 8081:8081 daus/volume-instruction
docker container start volumeIns
docker container inspect volumeIns

# build image dari folder workdir
docker build -t daus/workdir workdir
# bikin container dengan nama beda biar jelas
docker container create --name workdir-container -p 8080:8080 daus/workdir
# start container
docker container start workdir-container
# masuk ke shell container
docker container exec -it workdir-container /bin/sh
~ $ pwd
/app
~ $ 


# build image dari folder workdir
docker build -t daus/user-instruction user-instruction
# bikin container dengan nama beda biar jelas
docker container create --name user-instruction-container -p 8080:8080 daus/user-instruction
# start container
docker container start user-instruction-container
# masuk ke shell container
docker container exec -it user-instruction-container /bin/sh
~ $ whoami
pznuser
~ $ 

# build image dari folder workdir
docker build -t daus/argument-instruction argument-instruction --build-arg app=pzn
# bikin container dengan nama beda biar jelas
docker container create --name argument-instruction-container -p 8080:8080 daus/argument-instruction
# start container
docker container start argument-instruction-container

docker container logs argument-instruction-container
# masuk ke shell container
docker container exec -it argument-instruction-container /bin/sh

docker image inspect daus/argument-instruction
/go # cd app
/go/app # ls
pzn.go
/go/app # 

# build image dari folder workdir
docker build -t daus/health-check health-check
# bikin container dengan nama beda biar jelas
docker container create --name health-check-container -p 8080:8080 daus/health-check
# start container
docker container start health-check-container

docker container ls
docker container inspect health-check-container


docker build -t daus/entrypoint entrypoint
docker container create --name entrypoint-container -p 8080:8080 daus/entrypoint
docker container start entrypoint-container
docker container exec -it entrypoint-container /bin/sh
docker image inspect daus/entrypoint

docker build -t daus/multi-stage multi-stage
docker image ls | select-string "daus/multi-stage"
docker container create --name multi-stage-container -p 8080:8080 daus/multi-stage
docker container start multi-stage-container
docker container exec -it multi-stage-container /bin/sh
docker image inspect daus/multi-stage

# testing push to hub.docker.com harus menggunakan idbachtiarfirdaus/ karna username ini tinggal di sesuaikan dengan username aja
docker build -t idbachtiarfirdaus/multi-stage multi-stage
docker push idbachtiarfirdaus/multi-stage
#sample hasil https://hub.docker.com/r/idbachtiarfirdaus/multi-stage