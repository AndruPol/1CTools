@echo on
rem This file encoding DOS (CP866)
rem ��⮬���᪠� ���㧪� ��ୠ�� ॣ����樨 ��
rem �ᯮ������ ���ਧ��� Windows, ���� /WA+

Set Pwd=c:\backup\bin

Set Version=8.3.6.2100
Set prgDirx86="C:\Program Files (x86)\1cv8\%Version%\bin\1cv8.exe"
Set Host=server
Set ClusterPort=1541
Set DbName=db
Set epfFile="%Pwd%\���㧪���ୠ���������樨83.epf"
Set LogFile="%Pwd%\���㧪���ୠ���������樨.log"

rem ����᪠�� �।���⨥ � ०��� ����᪠ ��ࠡ�⪨
%prgDirx86% ENTERPRISE /S %Host%:%ClusterPort%\%DbName% /RunModeOrdinaryApplication /DisableStartupMessages /WA+ /Execute %epfFile% /C"����=c:\temp\;�����=���;��ਮ���=1;��ਮ�=������" /Out %Pwd%\%LogFile%  -NoTruncate
