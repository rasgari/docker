# docker network

file /etc/docker/daemon.json
1 ===>>> 

```
sudo nano /etc/docker/daemon.json
```


2 ===>>>
```
{
  "default-address-pools": [
    {"base":"172.80.0.0/16","size":24},
    {"base":"172.90.0.0/16","size":24}
  ],
  "dns": ["127.0.0.1"],
  "insecure-registries":["http://127.0.0.1"],
  "registry-mirrors":["http://127.0.0.1"]
}
```




3 ===>>>

```
sudo systemctl restart docker.service
```
&

```
sudo systemctl stop docker.service
sudo systemctl start docker.service
sudo systemctl status docker.service
```

4 ===>>>

```
sudo systemctl daemon-reload
```

5 ===>>>

```
reboot
```


============================================

## ERROR

error docker.service

```
sudo journalctl -u docker.service
```
&
```
sudo journalctl -xe
```
