# linux education:

دانلود پکیج های لینوکسی از مخازن ایران :

===>>> [site](repo.iut.ac.ir)

===========================================================

## command

```bash
sudo
```

```bash
su
```

```bash
pwd
```

```bash
lslbk
```

```bash
ls
```

```bash
ls -l
```

```bash
sudo chown -R admin:admin
```

```bash
sudo chmod -R +777
```

```bash
df -h
```

```bash
lvdisplay
```

===>>>GPU
```bash
btop
```

===>>> change permission
```bash
chmod
```

===>>> change owner
```bash
chown
```

===========================================================

## runlevel

```bash
systemctl set-default multi-user.target
```

===========================================================

## mount

mount /dev/sdb1 /mnt

```bash
pvcreate /dev/sdb1
vgcreate vgdocker /dev/sdb1
```

```bash
lvcreate -n lvdocker -l +100%FREE vgdocker
```

```bash
pvscan
vgscan
```

===========================================================

## firewall

```
sudo firewall-cmd --zone=public --add-port=9200/tcp --permanent
sudo firewall-cmd --zone=public --remove-port=9200/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --list-ports
```

===========================================================

