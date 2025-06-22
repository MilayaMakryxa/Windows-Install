# Перед установкой убедитесь, что у вас установлен PowerShell версии 5.1 или выше и Windows Package Manager (winget).
# Этот скрипт устанавливает необходимые приложения и драйверы на Windows 10/11.
# Убедитесь, что у вас есть права администратора для выполнения этого скрипта.
# Убедитесь, что у вас есть подключение к интернету для загрузки приложений и драйверов.
# Во время установки может потребоваться подтверждение действий от пользователя. Для установки без пользовательского ввода в параметрах управления учетными записями Windows отключите контроль учетных записей (UAC) (ползунок вниз).
# Перед устоновкой следует закоментировать или удалить строки с программами, которые вы не хотите устанавливать.
# Для запуска скрипта откройте PowerShell от имени администратора перейдите раздел, где расположен скрипт и выполните следующие команды по очереди:
# powershell.exe -ExecutionPolicy Bypass -File "C:\Users\Super user\Downloads\Installing programs for Windows.ps1" !!! Путь к файлу указать свой, это можно сделать через проводник, обязательно с указанием имени файла !!!
winget show --id 9NKSQGP7F2NH --source msstore # Ввести Y для подтверждения лицензии
$apps = @(
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Архиваторы
    "7zip.7zip", # 7-Zip
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Браузеры
    "Mozilla.Firefox.ru", # Mozilla Firefox
    "Google.Chrome", # Google Chrome
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Облачные хранилища
    "Google.GoogleDrive", # Google Drive
    "Microsoft.OneDrive", # Microsoft OneDrive
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Редактор документов
    "XPFD51H3VQZFM0", # PDF 24
    "9NSGM705MQWC", # WPS Office (Аналог Microsoft Office из Китая)
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Языки программирования
    "Oracle.JDK.24", # Java JDK 24
    "Python.Launcher", # Python Launcher
    "Python.Python.3.13", # Python 3.13
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Средства разработки
    "JetBrains.PyCharm.Community", # PyCharm Community Edition
    "JetBrains.IntelliJIDEA.Community", # IntelliJ IDEA Community Edition
    "Microsoft.VisualStudioCode", # Visual Studio Code
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Игровые лаунчеры
    "Valve.Steam", # Steam
    "EpicGames.EpicGamesLauncher", # Epic Games Launcher
    "Ubisoft.Connect", # Ubisoft Connect
    "GOG.Galaxy", # GOG Galaxy
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Редакор видео
    "ByteDance.CapCut", # CapCut Video Editor
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Мессенджеры
    "XPDC2RH70K22MN", # Discord
    "Telegram.TelegramDesktop", # Telegram Desktop
    "9NKSQGP7F2NH", # WhatsApp Desktop
    "Microsoft.Teams", # Microsoft Teams
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Заметки
    "Obsidian.Obsidian", # Obsidian
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Программы для скриншотов
    "ShareX.ShareX", # ShareX
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Программы для работы с изображениями
    "KDE.Krita", # Krita
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Онлайн доски
    "Miro.Miro", # Miro
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Виртуальные машины
    "Oracle.VirtualBox", # Oracle VirtualBox
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ VPN Сервисы
    "GeneralOutline.Outline", # Outline VPN (возможна ошибка скачивания из-за блокировок)
    "WireGuard.WireGuard", # WireGuard VPN (возможна ошибка скачивания из-за блокировок)
    "Mozilla.VPN", # Mozilla VPN (возможна ошибка скачивания из-за блокировок)
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Торренты
    "qBittorrent.qBittorrent", # qBittorrent (возможна ошибка скачивания из-за блокировок)
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Утилиты для Windows
    "XP89DCGQ3K6VLD", # PowerToys
    "9P8LTPGCBZXD", # Wintoys
    "XP8JK4HZBVF435", # Auto Dark Mode
    "9NV4BS3L1H4S", # QuickLook
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Расширения для видео
    "9N95Q1ZZPMH4", # MPEG-2 Video Extension
    "9N4D0MSMP0PT", # VP9 Video Extensions
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Удаленное подключение
    "AnyDesk.AnyDesk", # AnyDesk
    "TeamViewer.TeamViewer" # TeamViewer
)
foreach ($app in $apps)
{
    Write-Host "Installing $app..." -ForegroundColor Cyan
    $isInstalled = winget list --id $app -e | Select-String $app
    if ($isInstalled)
    {
        Write-Host "$app is already installed. Skipping..." -ForegroundColor Yellow
        continue
    }
    winget install $app -e --accept-source-agreements --accept-package-agreements
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Failed to install $app. Please check the error message above." -ForegroundColor Red
        continue        
    }
    else
    {
        Write-Host "$app installed successfully." -ForegroundColor Green
    }
}
Write-Host "Installation apps complete." -ForegroundColor Green
Read-Host "Press Enter to exit"
