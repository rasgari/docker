# docker

صفحه در حال به روز رسانی می باشد

[ docker doc ](https://docs.docker.com/engine/install/)


## docker :

مانیتورینگ عملکرد
ابزارهایی مانند htop، docker stats یا Portainer را برای نظارت بر منابع سرور در زمان اجرا استفاده کنید

دستورات کاربردی داکر


===>>> run image ----
```bash
docker compose up -d
```

===>>> stop image ----
```bash
docker compose down -v
```

===>>>  Delete All Images  ----
```bash
docker image rm -f
```

```bash
docker rmi -f 
```

===>>> Delete All Containers----
```bash
docker rm -vf
```

===>>> image ----
```bash
docker image
```

===>>> run -----
```bash
docker ps
```

===>>> run & stop ----
```bash
docker ps -a
```

===>>> load -----
```bash
docker load -i filename.tar
```

===>>> pull ----
```bash
docker pull portainer
```

===>>> log ----
```bash
docker logs -f <name container>
```

===>>> save ----
```bash
docker save -o portainer.tar portainer:portainer-ce
```

===>>> build ----
```bash
docker build --tag=portainer:portainer-ce . 
```

===>>> build force-rm -----
```bash
docker build --force-rm=true --no-cache --tag=portainer:portainer-ce
```

===>>> disable image -----
```bash
docker system prune -af  : لیست ایمیج غیرفعال داکر را حذف می کند
```

===>>> information -----
```bash
doker info
```

===>>> daemon -----
```bash
docker daemon
```

===>>> version ----
```bash
docker --version
```

===>>> network ----
```bash
docker network ls
```

===>>> top -----
```bash
docker top ID
```

===>>> volume ----
```bash
docker volume rm
```

===>>> restart ----
```bash
systemctl restart docker.service
```
&
```bash
docker compose restart geoserver
```

===>>> scout

```bash
docker scout
```

## Docker Proxy Mirror

[ focker ](https://focker.ir/)


**Modify Docker Compose Files**
You can quickly modify existing docker-compose files to use Focker.ir mirror:

Linux:
```bash
sed -i 's/^\s*image:\s*/&focker.ir\//g' docker-compose.yml
```

**Modify Kubernetes Deployment Files**
Similar to docker-compose, you can modify Kubernetes deployment files:

Linux:
```bash
sed -i 's/^\s*image:\s*/&focker.ir\//g' deployment.yml
```

```bash
docker pull focker.ir/nginx
```

پیکربندی دائمی: می‌توانید focker.ir را به عنوان registry mirror در فایل پیکربندی داکر (/etc/docker/daemon.json) اضافه کنید تا همه pullها به صورت خودکار از این میرور انجام شود:

```bash
"registry-mirrors": ["https://focker.ir"]
```

ساده‌ترین راه حمایت از من کلیک کردن روی ستاره (⭐) بالای همین صفحه است.
