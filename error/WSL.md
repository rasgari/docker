خطایی که توی فایل دادی مربوط به اجرای WSL برای Docker هست:
```
An error occurred while running the command.
Wsl/Service/RegisterDistro/CreateVm/0x80072746
c:\windows\system32\wsl.exe --import docker-desktop ...
exit status 0xffffffff
```
🔎 علت خطا

کد خطا 0x80072746 معمولا مربوط به مشکل شبکه یا ارتباط در ساخت VM WSL2 هست. چند دلیل رایج:

WSL2 به درستی نصب یا فعال نشده (ویژگی‌های Windows Subsystem for Linux یا Virtual Machine Platform غیرفعال باشه).

Hyper-V یا Virtualization توی BIOS فعال نیست.

کانفیگ شبکه یا DNS خراب شده (WSL نتونسته VM شبکه‌ای بسازه).

کش یا فایل‌های خراب Docker-WSL.

✅ راه‌حل‌ها

مراحل رو به ترتیب تست کن:

1. بررسی فعال بودن WSL2 و Virtual Machine Platform

در PowerShell (Run as Admin) اجرا کن:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

بعد سیستم رو ریستارت کن.

با دستور:
```
wsl --set-default-version 2
```

مطمئن شو که نسخه پیش‌فرض WSL2 هست.

2. بررسی فعال بودن Virtualization

توی Task Manager → تب Performance → CPU ببین گزینه Virtualization: Enabled هست یا نه.

اگر Disabled بود، وارد BIOS شو و Virtualization (Intel VT-x یا AMD-V) رو فعال کن.

3. ریست کردن شبکه WSL

بعضی وقت‌ها مشکل DNS یا شبکه باعث این خطا میشه:
```
netsh winsock reset
netsh int ip reset all
ipconfig /flushdns
```

سپس سیستم رو ریستارت کن.

4. پاک‌سازی و ری‌اینستال Docker WSL

اگر هنوز مشکل داری:

سرویس Docker Desktop رو Stop کن.

پوشه‌های WSL مربوط به Docker رو پاک کن:
```
wsl --unregister docker-desktop
wsl --unregister docker-desktop-data
```

بعد Docker Desktop رو دوباره باز کن، خودش WSL رو دوباره نصب می‌کنه.

5. آپدیت WSL

بعضی نسخه‌های قدیمی مشکل دارن. برای آپدیت:
```
wsl --update
```


===>>> offline download WSL ===>>> Step 4 - Download the Linux kernel update package 
```
https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package
```
