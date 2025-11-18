# log ESXI

✅ ۱) دستور اصلی برای پیدا کردن تغییر پسورد + IP

در ESXi Shell یا SSH وارد شو و بزن:
```
grep -i "password" /var/log/hostd.log | grep -i "changed"
```

اگر خروجی شامل “changed password” باشد، معمولاً شبیه این خواهد بود:
```
Event 109 : User root@192.168.1.50 changed password
```
✅ ۲) دستور قوی‌تر (IP را جداگانه استخراج می‌کند)
```
grep -i "password" /var/log/hostd.log | grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}"
```

خروجی فقط IPهایی است که در بخش تغییر پسورد آمده‌اند.

✅ ۳) دستور کامل با زمان، یوزر و IP:
```
grep -i "password" /var/log/hostd.log | grep -i "changed" | awk '{print $1,$2,$3,$0}'
```
🔥 ۴) اگر لاگ rotate شده (hostd.1.gz، hostd.2.gz):

همه نسخه‌های لاگ را بررسی کن:
```
for f in /var/log/hostd.log /var/log/hostd*.gz; do 
    echo "=== $f ==="; 
    zcat $f 2>/dev/null | grep -i "password" | grep -i "changed"; 
done
```
📌 خروجی‌ای که باید ببینی:

معمولاً چنین خطی در لاگ وجود دارد:
```
info hostd: [UserAccount] User root@10.10.10.25 changed password
```

یا:
```
Event 3081 : User root@192.168.1.100 changed password
```
⚠ اگر خروجی خالی بود:

یعنی:

رمز از طریق DCUI تغییر کرده → لاگ IP نمی‌دهد

لاگ rotate شده و پاک شده
```
hostd.log قدیمی است (نسخه‌های binded به syslog لازم است)
```
در این صورت دستور گسترده‌تری بهت می‌دهم.

📌 لطفاً نتیجه دستور زیر را بفرست تا دقیقاً بگویم کدام IP بوده:
```
grep -i "changed password" /var/log/hostd.log
```

یا اگر لاگ gzip است:
```
zcat /var/log/hostd.1.gz | grep -i "changed password"
```

اگر خروجی را همین‌جا کپی کنی، همان لحظه بهت می‌گم چه IP رمز ESXi را تغییر داده.
