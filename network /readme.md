# docker network

file /etc/docker/daemon.json


1 ===>>> ```sudo nano /etc/docker/daemon.json```


2 ===>>>
```
{
  "default-address-pools": [
    {"base":"172.80.0.0/16","size":24},
    {"base":"172.90.0.0/16","size":24}
  ]
}
```

3 ===>>> ```sudo systemctl restart docker.service```

4 ===>>> ```sudo systemctl daemon-reload```

5 ===>>> ```reboot```
