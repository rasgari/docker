# install kubernetes

مراحل نصب Kubernetes – گام‌به‌گام
🔹 گام 1: سیستم عامل را آماده کن
روی سرور اصلی (Master Node):

```bash
sudo swapoff -a                       # غیر فعال کردن swap
sudo sed -i '/ swap / s/^/#/' /etc/fstab

# تنظیم iptables
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
```

گام 2: نصب Container Runtime
بهتره از containerd استفاده کنی چون پایدارتره:

```bash

sudo yum install -y containerd
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sudo systemctl restart containerd
sudo systemctl enable containerd
```

🔹 گام 3: نصب kubeadm، kubelet، kubectl

```bash
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

sudo yum install -y kubelet kubeadm kubectl
sudo systemctl enable kubelet
```

🔹 گام 4: راه‌اندازی Master Node
```bash
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
```
📌 خروجی این دستور شامل یک kubeadm join هست که برای اتصال Worker Nodeها استفاده می‌کنی.

🔹 گام 5: پیکربندی kubectl
```bash
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
```

🔹 گام 6: نصب شبکه (مثلاً Flannel یا Calico)
مثال برای Flannel:
```bash
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
```
🔹 گام 7: بررسی وضعیت کلاستر
```bash
kubectl get nodes
kubectl get pods -A
```

🐳 اگر بخوای از ایمیج‌های داکری استفاده کنی:
برای اجرای آفلاین یا سریع‌تر می‌تونی ایمیج‌ها رو از قبل بگیری:
```bash
# برای فلانل:
docker pull flannel/flannel:v0.22.0

# ایمیج‌های k8s:
kubeadm config images pull
```


نتیجه گیری :
فایل‌های RPM مورد نیاز برای نصب kubeadm/kubelet/kubectl روی CentOS

فایل‌های YAML شبکه (Flannel / Calico)

اسکریپت آماده نصب آفلاین Kubernetes

برای آماده شدن کوبرنتیز نیاز است


