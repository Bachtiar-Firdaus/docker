docker compose create
docker container ls -a | select-string "created"
docker compose start

#untuk melihat container yang berjalan berdasarkan docker compose
docker compose ps

docker compose stop
docker compose down

docker compose ls


#bind mount ini sangat penting untuk management data database di luar docker
#untuk menghapus volume harus manual 
docker volume rm namavolume
docker volume prune

# untuk mengatur urutan container yang berjalan menggunakan depends on

#untuk memantau container secara realtime
docker events --filter 'container=mongodb-express-depends-on'

docker compose build