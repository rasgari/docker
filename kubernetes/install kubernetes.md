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
