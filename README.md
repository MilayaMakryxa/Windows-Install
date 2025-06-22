# Windows-Install
Файлы из данного репозитория используются для чистой установки Windows, а также загрузки всех необходимых программ на ваш компьютер после установки. Для загрузки ПО используется фаловый менеджер winget. 

# Установка Windows
Для установки чистого образа Windows необходимо выполнить следующие шаги:
1. Создать загрузочную флешку через утилиту Rufus;
2. Скопировать один из файлов .xml в флешку;
3. Выйти в BIOS и выбрать загрузку с загрузочной флешки;
4. Выполнить установку Windows

# Особенности
- Поддержка процессоров Intel 32/64 - bit AMD 32/64 - bit и Arm64;
- Язык системы - Русский (Россия). Второй язык для раскладки клавиатуры - Английский (США);
- Обходит проверку требований Windows 11 (TPM, Secure Boot и т.д.);
- Виджеты отключены
- Автоматическое обновление Windows отключено (если пользователю необходимо выполнить обновление, то нужно это сделать вручную);
- Благодаря данному .xml в Windows не будут установлены "мусорные программы", которые занимают место и ресурсы компа. В случае чего все программы можно установить через MSStore или файловый менеджер winget;
- Браузер MSEdge может быть удален по вашему желанию;
# Установленные  приложения
  [x] - удалено
  [ ] - установлено

| ///////////////////////////////// | //////////////////////////////////// | /////////////////////////////////// |
| --------------------------------- | ------------------------------------ | ----------------------------------- |
| - [x] 3D Viewer                   | - [x] Bing Search                    | - [ ] Calculator                    |
| - [x] Camera                      | - [x] Clipchamp                      | - [ ] Clock                         |
| - [x] Copilot                     | - [x] Cortana                        | - [x] Dev Home                      |
| - [x] Family                      | - [x] Feedback Hub                   | - [x] Get Help                      |
| - [ ] Handwriting (all languages) | - [x] Internet Explorer              | - [x] Mail and Calendar             |
| - [x] Maps                        | - [ ] Math Input Panel               | - [ ] Media Features                |
| - [x] Mixed Reality               | - [x] Movies & TV                    | - [x] News                          |
| - [ ] Notepad (modern)            | - [x] Office 365                     | - [x] OneDrive                      |
| - [x] OneNote                     | - [x] OneSync                        | - [ ] OpenSSH Client                |
| - [x] Outlook for Windows         | - [ ] Paint                          | - [x] Paint 3D                      |
| - [x] People                      | - [ ] Photos                         | - [x] Power Automate                |
| - [ ] PowerShell 2.0              | - [ ] PowerShell ISE                 | - [x] Quick Assist                  |
| - [x] Recall                      | - [ ] Remote Desktop Client          | - [ ] Skype                         |
| - [x] Snipping Tool               | - [x] Solitaire Collection           | - [ ] Speech (all languages)        |
| - [x] Steps Recorder              | - [x] Sticky Notes                   | - [x] Teams                         |
| - [x] Tips                        | - [x] To Do                          | - [x] Voice Recorder                |
| - [x] Wallet                      | - [x] Weather                        | - [x] Windows Fax and Scan          |
| - [x] Windows Hello               | - [ ] Windows Media Player (classic) | - [ ] Windows Media Player (modern) |
| - [ ] Windows Terminal            | - [x] WordPad                        | - [x] Xbox Apps                     |
| - [x] Your Phone / Phone Link     |                                      |                                     |
# Запуск скрипта для установки приложения
Для установки приложений, которые вам необходимы, нужно закомментировать строки символом # напротив того приложения, которое вы не хотите устанавливать. Также стоит отметить, что последний не закомментированный объект в массиве должен быть без запятой (открыть скрипт можно в блокноте).
После внесения изменений в файл необходимо:
- Запустить PowerShell от имени администратора (это важно, так как иначе загрузка файлов будет медленнее)
- Ввести команду: 
```
powershell.exe -ExecutionPolicy Bypass -File "C:\Users\Super user\Downloads\Installing programs for Windows.ps1"
```
Пусть к файлу указывается свой, кавычки обязательны!
- Дождаться установки ПО.

# Будущее
В дальнейшем планируется создание пользовательского интерфейса и расширение списка программ

  
  



