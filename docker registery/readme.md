برای راه‌اندازی یک Docker Registry خصوصی که روی پورت ۵۰۰۰ گوش دهد، می‌توانید از روش‌های ساده و سریع زیر استفاده کنید:

1. راه‌اندازی سریع با دستور docker run
اجرای کانتینر رجیستری رسمی Docker روی پورت ۵۰۰۰:
```bash
docker run -d -p 5000:5000 --restart=always --name registry registry:2
```

این دستور یک رجیستری خصوصی روی پورت ۵۰۰۰ سیستم شما راه‌اندازی می‌کند.

پس از اجرا، می‌توانید با آدرس http://localhost:5000/v2/_catalog صحت عملکرد رجیستری را بررسی کنید.

نکته: اگر این ایمیج روی سیستم شما موجود نباشد، ابتدا از Docker Hub دانلود می‌شود.

2. راه‌اندازی با Docker Compose
برای مدیریت بهتر و پیکربندی راحت‌تر، می‌توانید یک فایل docker-compose.yml بسازید:
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

سپس با دستور زیر رجیستری را اجرا کنید:
```bash
docker compose up -d
```
این روش امکان ذخیره داده‌ها در مسیر ./data روی میزبان را فراهم می‌کند


3. پیکربندی دسترسی امن (اختیاری)
برای دسترسی امن به رجیستری، معمولاً از یک وب‌سرور پراکسی مانند Nginx استفاده می‌شود که ترافیک را به پورت ۵۰۰۰ فوروارد کند و HTTPS را فعال کند.

نمونه پیکربندی Nginx برای فوروارد به رجیستری:

```bash
location / {
    proxy_pass http://localhost:5000;
    proxy_set_header Host $http_host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_read_timeout 900;
}
```

سپس Nginx را ریستارت کنید:
```bash
sudo systemctl restart nginx
```
با این کار، می‌توانید رجیستری را از طریق دامنه و با HTTPS امن کنید.

4. استفاده از رجیستری
برای ارسال (push) و دریافت (pull) ایمیج‌ها به رجیستری خصوصی، باید تگ ایمیج‌ها را به صورت localhost:5000/imagename یا your_domain:5000/imagename تغییر دهید.

```bash
docker tag busybox localhost:5000/busybox
docker push localhost:5000/busybox
```

جمع‌بندی
پورت ۵۰۰۰ پورت پیش‌فرض Docker Registry است.

می‌توانید با اجرای سریع دستور docker run یا استفاده از Docker Compose رجیستری را راه‌اندازی کنید.

برای امنیت و دسترسی بهتر، استفاده از Nginx به عنوان پراکسی معکوس با HTTPS توصیه می‌شود.

پس از راه‌اندازی، با مراجعه به http://localhost:5000/v2/_catalog می‌توانید صحت عملکرد رجیستری را بررسی کنید.

این روش‌ها ساده و سریع هستند و برای محیط‌های توسعه و تولید کوچک مناسب‌اند

