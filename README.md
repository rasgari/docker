# docker

صفحه در حال به روز رسانی می باشد
docker :

دستورات کاربردی داکر

----  Delete All Images  ----

docker image rm -f $(docker images -aq)


----  Delete All Containers----

docker rm -vf $(docker ps -aq)

---- run image ----
docker compose up -d

---- stop image ----
docker compose down -v

---- image ----
docker image

docker ps

docker load -i filename.tar

docker pull portainer

docker save -o portainer.tar portainer:portainer-ce

docker build --tag=portainer:portainer-ce . 

docker build --force-rm=true --no-cache --tag=portainer:portainer-ce

ssh root@192.168.0.1

doker info

docker daemon

docker --version


ساده‌ترین راه حمایت از من کلیک کردن روی ستاره (⭐) بالای همین صفحه است.


