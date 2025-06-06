# error docker scout

# Error 1

New version 1.18.1 available (installed version is 1.17.1) at https://github.com/docker/scout-cli
Log in with your Docker ID or email address to use docker scout.

If you don't have a Docker ID, head over to https://hub.docker.com to
create one. You can log in with your password or a Personal Access Token (PAT)
by running docker login.
Using a limited-scope PAT grants better security and is required for organizations
using SSO. Learn more at https://docs.docker.com/go/access-tokens/

You can also log in using Docker Desktop.


## solution

این پیام نشان‌دهنده چند نکته مهم درباره استفاده از Docker Scout است:

نسخه جدید Docker Scout موجود است:
شما نسخه 1.17.1 را نصب دارید ولی نسخه 1.18.1 در دسترس است. برای دریافت آخرین نسخه می‌توانید به آدرس گیت‌هاب Docker Scout مراجعه کنید:
https://github.com/docker/scout-cli

نیاز به ورود (Login) با Docker ID یا ایمیل:
برای استفاده از docker scout باید ابتدا با حساب Docker خود وارد شوید. این کار به منظور احراز هویت و دسترسی به سرویس‌های Docker Scout است.

اگر حساب Docker ندارید، می‌توانید رایگان ثبت‌نام کنید در:
https://hub.docker.com

سپس با دستور زیر وارد شوید:

bash
docker login
که می‌توانید با رمز عبور یا Personal Access Token (PAT) وارد شوید.

استفاده از Personal Access Token (PAT):
استفاده از PAT امنیت بیشتری دارد و برای سازمان‌هایی که از Single Sign-On (SSO) استفاده می‌کنند الزامی است.
درباره PAT می‌توانید در مستندات Docker مطالعه کنید:
https://docs.docker.com/go/access-tokens/

گزینه ورود از طریق Docker Desktop:
اگر از Docker Desktop استفاده می‌کنید، می‌توانید از طریق آن نیز وارد شوید و نیازی به ورود جداگانه در CLI نیست.

خلاصه خطا و راه‌حل‌ها
مشکل احتمالی	توضیح و راه‌حل
عدم ورود به حساب Docker	با دستور docker login وارد شوید یا در Docker Desktop لاگین کنید.
نسخه قدیمی Docker Scout CLI	نسخه جدید را از گیت‌هاب دانلود و نصب کنید.
نداشتن حساب Docker	در https://hub.docker.com ثبت‌نام کنید.
نکته
اگر در ورود با خطا مواجه شدید، مطمئن شوید که:

اینترنت فعال است

اطلاعات حساب درست وارد شده

اگر سازمان شما از SSO استفاده می‌کند، PAT ساخته و استفاده می‌کنید.

منابع
صفحه گیت‌هاب Docker Scout CLI: https://github.com/docker/scout-cli

مستندات ورود Docker: https://docs.docker.com/engine/reference/commandline/login/

مستندات PAT: https://docs.docker.com/go/access-tokens/


===================================================

# Error 2:

This image couldn't be analyzed
It may have an unsupported architecture, or exceed the maximum size


## solution
پیام "This image couldn't be analyzed. It may have an unsupported architecture, or exceed the maximum size" به این معنی است که Docker Scout نتوانسته ایمیج شما را بررسی کند. این مشکل معمولاً به یکی از دو دلیل زیر رخ می‌دهد:

۱. معماری (Architecture) ناسازگار
اگر معماری ایمیج (مثلاً amd64، arm64) با معماری سیستم شما یا با معماری‌هایی که Docker Scout پشتیبانی می‌کند، سازگار نباشد، آنالیز انجام نمی‌شود.

این مشکل به ویژه زمانی پیش می‌آید که مثلاً ایمیج فقط برای arm64 ساخته شده و شما روی سیستم amd64 یا بالعکس کار می‌کنید.

راه‌حل:

با دستور زیر معماری ایمیج را بررسی کنید:

bash
docker image inspect <image-name>
دنبال مقدار "Architecture" بگردید و مطمئن شوید با سیستم شما و با معماری‌های پشتیبانی‌شده توسط Docker Scout سازگار است.

اگر لازم است، ایمیج را با چند معماری (multi-arch) بسازید:

bash
docker buildx build --platform linux/amd64,linux/arm64 -t <image-name> --push .
۲. حجم زیاد ایمیج
Docker Scout و Docker Desktop فقط ایمیج‌هایی با حجم حداکثر ۱۰ گیگابایت (uncompressed) را به صورت پیش‌فرض آنالیز می‌کنند. اگر حجم ایمیج بیشتر از این مقدار باشد، آنالیز انجام نمی‌شود.

راه‌حل:

حجم ایمیج را با دستور زیر بررسی کنید:

bash
docker image inspect <image-name>
دنبال مقدار "Size" بگردید.

اگر ایمیج بزرگ‌تر از ۱۰ گیگابایت است:

سعی کنید ایمیج را کوچک‌تر کنید (پاک کردن فایل‌های غیرضروری، کاهش تعداد لایه‌ها و ...).

یا ایمیج را با SBOM attestation بسازید که محدودیت حجم را برمی‌دارد:

bash
docker build --provenance=true --sbom=true -t <image-name> .
سپس ایمیج را push و دوباره آنالیز کنید.

۳. سایر راه‌حل‌ها و نکات
اگر Docker Desktop یا Scout مدتی درست کار می‌کرده و ناگهان همه ایمیج‌ها را آنالیز نمی‌کند، ممکن است باگ یا مشکل کش باشد.
راه‌حل موقت: حذف و نصب مجدد Docker Desktop می‌تواند مشکل را رفع کند.

مطمئن شوید با حساب Docker خود لاگین کرده‌اید و اینترنت دارید.

اگر باز هم مشکل حل نشد، ایمیج را در یک ریپازیتوری جدید push و آنالیز را از طریق داشبورد Docker Scout انجام دهید.

جمع‌بندی سریع راه‌حل‌ها
معماری ایمیج را با سیستم و پشتیبانی Scout چک کنید و در صورت نیاز ایمیج multi-arch بسازید.

حجم ایمیج را بررسی و در صورت نیاز کوچک کنید یا با SBOM attestation بسازید.

اگر مشکل سراسری است، Docker Desktop را حذف و دوباره نصب کنید.

مطمئن شوید لاگین هستید و اینترنت دارید.

اگر هنوز مشکل داری، خروجی دستور

bash
docker image inspect <image-name>
را بفرست تا دقیق‌تر راهنمایی کنم.
