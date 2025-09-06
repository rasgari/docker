# رفع خطای Docker + WSL2
# اجرا با Run as Administrator

Write-Host "🚀 شروع رفع مشکل WSL + Docker..." -ForegroundColor Cyan

# 1. فعال‌سازی WSL و Virtual Machine Platform
Write-Host "🔧 فعال‌سازی ویژگی‌های مورد نیاز..." -ForegroundColor Yellow
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# 2. تنظیم پیش‌فرض WSL2
Write-Host "⚙️ تنظیم WSL نسخه 2 به عنوان پیش‌فرض..." -ForegroundColor Yellow
wsl --set-default-version 2

# 3. ریست کردن شبکه
Write-Host "🌐 ریست تنظیمات شبکه..." -ForegroundColor Yellow
netsh winsock reset
netsh int ip reset all
ipconfig /flushdns

# 4. آپدیت WSL به آخرین نسخه
Write-Host "⬆️ به‌روزرسانی WSL..." -ForegroundColor Yellow
wsl --update

# 5. پاک کردن داکر WSL در صورت خرابی
Write-Host "🗑 پاک‌سازی Docker WSL (در صورت وجود)..." -ForegroundColor Yellow
wsl --unregister docker-desktop 2>$null
wsl --unregister docker-desktop-data 2>$null

Write-Host "✅ عملیات تکمیل شد. لطفا سیستم را ریستارت کنید." -ForegroundColor Green
