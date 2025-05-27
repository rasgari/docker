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


===>>> solution

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
