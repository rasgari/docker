# kubernetes:

## architecture:

- KUBECTL
- API server
- controller manager
- scheduler
- KUBELET
- ETCD
- kube proxy
- POD
- container runtime 


==============================================================


لیست مهم‌ترین دستورات Kubernetes (kubectl)
در اینجا پرکاربردترین و ضروری‌ترین دستورات kubectl برای مدیریت و عیب‌یابی کلاستر Kubernetes آورده شده است:

مدیریت منابع اصلی
مشاهده همه پادها:

```bash
kubectl get pods
```
مشاهده همه سرویس‌ها:

```bash
kubectl get services
```
مشاهده همه نودها:

```bash
kubectl get nodes
```
مشاهده همه منابع در یک namespace:

```bash
kubectl get all -n <namespace>
```
مشاهده اطلاعات کامل یک پاد:

```bash
kubectl describe pod <pod-name>
```
مشاهده اطلاعات کامل یک سرویس:

```bash
kubectl describe service <service-name>
```
مشاهده لاگ‌های یک پاد:

```bash
kubectl logs <pod-name>
```
ورود به شل یک پاد:

```bash
kubectl exec -it <pod-name> -- /bin/sh
```
حذف یک پاد:

```bash
kubectl delete pod <pod-name>
```
ساخت یک منبع از فایل yaml:

```bash
kubectl create -f <file.yaml>
```
بروزرسانی یا ساخت منبع از فایل yaml:

```bash
kubectl apply -f <file.yaml>
```
حذف منبع از فایل yaml:

```bash
kubectl delete -f <file.yaml>
```
مدیریت و عیب‌یابی پیشرفته
مشاهده منابع در همه namespaceها:

```bash
kubectl get pods --all-namespaces
```
مشاهده رویدادهای اخیر کلاستر:

```bash
kubectl get events --sort-by='.lastTimestamp'
```
مشاهده مصرف منابع (نیاز به نصب metrics-server):

```bash
kubectl top pods
kubectl top nodes
```
مقیاس‌دهی یک deployment:

```bash
kubectl scale deployment <deployment-name> --replicas=3
```
بروزرسانی rolling deployment:

```bash
kubectl rollout restart deployment <deployment-name>
```
مشاهده تاریخچه deployment:

```bash
kubectl rollout history deployment/<deployment-name>
```
بازگردانی deployment به نسخه قبلی:

```bash
kubectl rollout undo deployment/<deployment-name>
```
ویرایش مستقیم منابع:

```bash
kubectl edit <resource> <name>
```
مدیریت context و namespace
مشاهده contextها:

```bash
kubectl config get-contexts
```
تغییر context فعال:

```bash
kubectl config use-context <context-name>
```
تنظیم namespace پیش‌فرض:

```bash
kubectl config set-context --current --namespace=<namespace>
```
سایر دستورات کاربردی
برچسب‌گذاری یک پاد:

```bash
kubectl label pod <pod-name> key=value
```
افزودن annotation به یک پاد:

```bash
kubectl annotate pod <pod-name> key=value
```
فوروارد کردن پورت از پاد به لوکال:

```bash
kubectl port-forward pod/<pod-name> 8080:80
```
این دستورات پایه‌ای‌ترین و پرکاربردترین ابزارهای مدیریت و عیب‌یابی Kubernetes هستند و یادگیری آن‌ها برای هر ادمین یا توسعه‌دهنده ضروری است
