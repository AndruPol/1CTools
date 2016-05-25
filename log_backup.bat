@echo on
rem Автоматическая выгрузка журнала регистрации ИБ
rem используется авторизация Windows, ключ /WA+

Set Pwd=c:\backup\bin

Set Version=8.3.6.2100
Set prgDirx86="C:\Program Files (x86)\1cv8\%Version%\bin\1cv8.exe"
Set Host=server
Set ClusterPort=1541
Set DbName=db
Set epfFile="%Pwd%\ВыгрузкаЖурналаРегистрации83.epf"
Set LogFile="%Pwd%\ВыгрузкаЖурналаРегистрации.log"

rem Запускаем Предприятие в режиме запуска обработки
%prgDirx86% ENTERPRISE /S %Host%:%ClusterPort%\%DbName% /RunModeOrdinaryApplication /DisableStartupMessages /WA+ /Execute %epfFile% /C"Путь=c:\temp\;Очищать=Нет;ПериодДо=1;Период=Неделя" /Out %Pwd%\%LogFile%  -NoTruncate
