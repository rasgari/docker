# docker

صفحه در حال به روز رسانی می باشد
docker :

مانیتورینگ عملکرد
ابزارهایی مانند htop، docker stats یا Portainer را برای نظارت بر منابع سرور در زمان اجرا استفاده کنید

دستورات کاربردی داکر

----  Delete All Images  ----

docker image rm -f $(docker images -aq)

docker rmi -f (idimage)

----  Delete All Containers----

docker rm -vf $(docker ps -aq)

---- run image ----
docker compose up -d

---- stop image ----
docker compose down -v

---- image ----
docker image

---- run -----
docker ps

---- load -----
docker load -i filename.tar

---- pull ----
docker pull portainer

---- save ----
docker save -o portainer.tar portainer:portainer-ce

---- build ----
docker build --tag=portainer:portainer-ce . 

---- build force-rm -----
docker build --force-rm=true --no-cache --tag=portainer:portainer-ce

---- disable image -----
docker system prune -af: لیست ایمیج غیرفعال داکر را حذف می کند

---- information -----
doker info

---- daemon -----
docker daemon

---- version ----
docker --version

---- network ----
docker network ls

----top -----
docker top ID



---- restart ----
systemctl restart docker.service





ساده‌ترین راه حمایت از من کلیک کردن روی ستاره (⭐) بالای همین صفحه است.


