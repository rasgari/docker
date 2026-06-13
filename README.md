# docker

صفحه در حال به روز رسانی می باشد

[ docker doc ](https://docs.docker.com/engine/install/)


===>>> date 8/6/2026 ===>>> docker desktop version 4.77.0  ===
[docker desktop](https://docs.docker.com/desktop/setup/install/windows-install/)

## docker :

مانیتورینگ عملکرد
ابزارهایی مانند htop، docker stats یا Portainer را برای نظارت بر منابع سرور در زمان اجرا استفاده کنید

دستورات کاربردی داکر


===>>> run image 
```bash
docker compose up -d
```

```bash
docker compose up -d -f
```

```bash
docker compose up -d --no-deps (docker images)
```

```
docker run <image>:<tag>
docker run -it <image>:<tag>
docker run -d <image>:<tag>
```

===>>> stop image 
```bash
docker compose down -v
```

```bash
docker stop <container>
```

```bash
docker kill <container>
```

```bash
docker search <image>
```

```bash
docker login <repository>
```

===>>> list docker compose running &  stoping
```bash
docker compose ls
```

```bash
docker compose up -d -f
```


```bash
docker stats
```

```bash
docker diff
```

```bash
docker attach <container>
```

===>>> logs image 
```bash
docker compose logs -f container
```

===>>>  pull Images  
```bash
docker pull
```

===>>>  push Images  
```bash
docker push
```

===>>>  Delete All Images  
```bash
docker image rm -f
```
&
```bash
docker rmi -f 
```



===>>> Delete All Containers 
```bash
docker rm -vf $(docker ps -aq)
```

===>>> image 
```bash
docker image
```

===>>> run
```bash
docker ps
```
&
===>>> run
```bash
docker ps --all
```

===>>> run & stop
```bash
docker ps -a
```

===>>> load
```bash
docker load -i filename.tar
```

===>>> pull
```bash
docker pull portainer
```

===>>> log
```bash
docker logs <container>
```

===>>> log
```bash
docker logs -f <name container>
```

===>>> log
```bash
docker logs -t <name container>
```

===>>> save
```bash
docker save -o portainer.tar portainer:portainer-ce
```

===>>> build
```bash
docker build --tag=portainer:portainer-ce . 
```

===>>> build force-rm
```bash
docker build --force-rm=true --no-cache --tag=portainer:portainer-ce
```

===>>> disable image
```bash
docker system prune -af  : لیست ایمیج غیرفعال داکر را حذف می کند
```

===>>> Automatic confirmation and volume deletion
```bash
docker system prune -a --volumes
```

===>>> docker events
```bash
docker system events
```
&
===>>> docker events
```bash
docker system events --filter 'event=stop'
```


===>>> docker information
```bash
docker system info
```

===>>> docker df
```bash
docker system df
```
&
===>>> docker df -v
```bash
docker system df -v
```

===>>> date
```bash
systemctl date
```

===>>> timedatectl
```bash
sudo timedatectl set-ntp
```

===>>> information
```bash
doker info
```

===>>> daemon
```bash
docker daemon
```

===>>> version
```bash
docker --version
```

===>>> network
```bash
docker network ls
```

```bash
docker network prune
```

===>>> top
```bash
docker top ID
```

===>>> volume
```bash
docker volume rm
```

```bash
docker volume ls
```

```bash
docker volume create <volume>
```

```bash
docker volume rm <volume>
```

```bash
docker volume inspect <volume>
```

```bash
docker inspect <image>
```

```bash
docker volume prune <volume>
```

```bash
docker image prune 
```

```bash
docker run -v
```

```bash
docker run -d -p 127.0.0.1
```

```bash
docker port <container>
```

```bash
docker cp
```

===>>> space full  ===>>> LINUX UI ===>>> disk usage analyzer
```bash
sudo find /home -type f size +100M -exec ls -lh {} \;
```

===>>> size
```bash
df -h
```

===>>> docker resources
```bash
docker system df
```

===>>> restart
```bash
systemctl restart docker.service
```
&
```bash
docker compose restart geoserver
```
&
```bash
sudo systemctl restart docker
```

```bash
sudo systemctl daemon-reload
```

===>>> firewall
```
sudo firewall-cmd --zone=public --add-port=9200/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --list-ports
sudo firewall-cmd --zone=public --remove-port=9200/tcp --permanent
```

===>>> Security vulnerabilities in Docker images
```bash
docker scout quickview
```

===>>> Display the list of identified vulnerabilities
```bash
docker scout cves
```

===>>> Provide suggestions for fixing vulnerabilities
```bash
docker scout recommendations
```

===>>> Compare two images and show the differences
```bash
docker scout compare
```

===>>> Generate or display SBOM of an image
```bash
docker scout sbom
```

for example

**docker scout quickview nginx**

## docker range IP

===>>> file ( daemon.json ) ===>>> 
```bash
sudo nano /etc/docker/daemon.json
```

===>>> after line live

```bash
"bip": "65.65.65.1/24"
```

===>>> after save

```bash
systemctl restart docker.service
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

model:
```bash
docker model ps
```

```bash
docker model df
```

```bash 
docker model unload
```

=======================================================================

## docker 
process contianer

OS container ===>>>LCI

پیکربندی دائمی: می‌توانید focker.ir را به عنوان registry mirror در فایل پیکربندی داکر (/etc/docker/daemon.json) اضافه کنید تا همه pullها به صورت خودکار از این میرور انجام شود:

```bash
"registry-mirrors": ["https://focker.ir"]
```


***********************************************************************



سرویس Docker Registry Mirror مبین‌هاست راه‌اندازی شد!

🔗 آدرس : https://docker.mobinhost.com

🔧 مبین‌هاست با هدف ارتقاء تجربه توسعه‌دهندگان و تیم‌های DevOps، سرویس Docker Registry Mirror را به صورت کاملاً پایدار و پرسرعت راه‌اندازی کرده است. با استفاده از این سرویس، دیگر نیازی به دانلودهای کند و محدود از Docker Hub نخواهید داشت!

=======================================================================
## docker base

```
docker run -d -p 5000:5000 --restart=always --name registry registry:2
```



===>>> docker compose 

```bash
version: '3'
services:
  registry:
    image: registry:latest
    container_name: registry
    ports:
      - "5000:5000"
    environment:
      - REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/data
    volumes:
      - ./data:/data
```

===>>> image registry

```bash 
docker pull registry
```
ساده‌ترین راه حمایت از من کلیک کردن روی ستاره (⭐) بالای همین صفحه است.
