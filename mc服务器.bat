@echo off
title ������������ - Cmd1152����
setlocal enabledelayedexpansion
for /l %%i in (1,1,100) do (
set Ts=!Ts!
set /p =!Ts![%time:~0,-3%] ����׼�������ַ���^(%%i/100^)...<nul
)
echo;[%time:~0,-3%] ���ڼ��Config. . .
if not exist config.txt (
(
echo ;�����Ƿ��������ĵ�λ��^(���˽���Spigot^)
echo Server=
echo ;�����������ڴ浥λ:G
echo G=1
echo ;java·��������xxxxxx^\xxxxxxxxx^\xxxxx^\java.exe
echo java=
echo ;����̨��ɫ������װ�ƣ�Ĭ�Ͽ�
echo color=
echo ;������ֹ֮ͣ���Ƿ�������trueΪ������falseΪ������
echo RS=false
echo ;�������˿�
echo DK=25565
echo ;�Զ�������־�ʹ�����־��TrueΪ��������Ϊ������
echo QLRZ=true
echo ;����IPv4��������Զ�ʹ��IPv6��
echo IPv4=
echo ;����IPv6������ʹ����ʱIPv6������Ҫ������͸�����ǳ����׳���������Զ���ȡ��
echo IPv6=
echo;
echo ;IP����ʹ������ipconfig��ȡ
echo;
echo;                                                                                                                                                                                                                                                                                                                  NOB=FPTDRFSH362DFRG556GHDRGHDFS
)>Config.txt
echo [%time:~0,-3%] run config.txt
start config.txt
)
FOR /F "eol=; delims=" %%i in (Config.txt) do (set %%i)
if "%XY%"=="" call :xy
if not "%stop%"=="" (
echo [%time:~0,-3%] �˳����޷�����ĵ����������У���ɾ��Config.txt�����ԡ�
pause
exit
)
if not "%NOB%"=="FPTDRFSH362DFRG556GHDRGHDFS" (
echo;                                                                                                                                                                                                                                                                                                                            Stop=ffff1>>Config.txt
echo [%time:~0,-3%] ���汣������
echo [%time:~0,-3%] �����ļ����޸Ļ��߰汾����
echo [%time:~0,-3%] ����Ҫ�������������ش��ļ�
echo [%time:~0,-3%] �˳����Ѿ�ֹͣ����
pause
exit
) else (
echo [%time:~0,-3%] ������֤���
goto :nocls
)
if not exist "%Server%" (
echo [%time:~0,-3%] ����:Server=%Server%
pause
exit
)
if not exist "%java%" (
echo [%time:~0,-3%] ����:java=%java%
pause
exit
)
if "%DK%"=="" (
echo [%time:~0,-3%] ����:DK=%DK%
pause
exit
)
if not "%IPv4%"=="" (
if not exist eula.txt (
(echo;;���ǲ����ϴ����IPv4��IPv6�Ͷ˿�
echo;;�˳�������������������������Ը�
echo;;ͬ�����޸�falseΪTrue
echo eula=False
)>eula.txt
echo [%time:~0,-3%] ��鿴eula.txt
pause
exit
)
FOR /F "eol=; delims=" %%i in (eula.txt) do (set %%i)
if /i "!eula!"=="True" goto :ok
echo [%time:~0,-3%] ��ͬ��eula.txt
pause
exit
)
:Ok
if not "%color%"=="" (
color %color%
echo [%time:~0,-3%] set color the %color%
)
:y
cls
:nocls
if "%IPv6%"=="" call :getIPv6
echo [%time:~0,-3%] ���ڶԻ�ȡ������Ϣ���вü� . . . ��IPv6��IPv4����ʾ������
if not "%IPv6%"=="" (
set fori=���� [%IPv6%]:%DK%
set forn=%IPv4%:%DK%
if "%IPv4%"=="" (
set forn=
set fori=[%IPv6%]:%DK%
)
)
echo [%time:~0,-3%] ˢ�¿���̨��ɫ����ֹ��ɫ����
call :colorSX
if not "%color%"=="" (
color %color%
) else (
set color=07
color 07
)
echo [%time:~0,-3%] ������ɫΪ %color%
echo [%time:~0,-3%] �����޸��ļ�...
ATTRIB -r -s -h start.bat
echo;@echo off>start.bat
echo;setlocal enabledelayedexpansion>>start.bat
echo;for /l %%%%i in ^(1,1,100^) do ^(set Ts^=!Ts!^)>>start.bat
echo;echo;>>start.bat
echo;echo;�������б���ֹ����Ϊ�������Ѿ��������� . . .>>start.bat
echo;echo;>>start.bat
echo;for /l %%%%i in ^(5,-1,1^) do ^(>>start.bat
echo;set /p =!Ts!^[�����رմ˴���^] %%%%i ����Զ��رմ˴���^<nul>>start.bat
echo;ping -n 2 127.1 ^>nul>>start.bat
echo;>>start.bat
echo;exit>>start.bat
ATTRIB +r +s +h start.bat
echo [%time:~0,-3%] ������IP:
echo [%time:~0,-3%] %forn%%fori%
echo [%time:~0,-3%] IPv4������Ҫ������͸����IPv6����Ҫ��
if exist run.tmp (
for /l %%i in (1,1,13) do (
set /p =!Ts!                                                 <nul
ping -n 1 127.1 >nul
set /p =!Ts![%time:~0,-3%] �������ϴ�û����ȷ�رշ����� . . .<nul
ping -n 1 127.1 >nul
ping -n 1 127.1 >nul
)
echo;
)
:ksqd
echo [%time:~0,-3%] �������� . . .
C:/Users/Administrator/AppData/Local/Microsoft/WindowsApps/python3.12.exe c:/Users/Administrator/Desktop/McAutoSafe.py
cd.>run.tmp
if not exist run.tmp goto :ksqd
"%java%" -Xmx%G%G -jar "%Server%" -nogui
:tzqd
echo [%time:~0,-3%] ����ֹͣ������ . . .
del run.tmp
if exist run.tmp goto :tzqd
echo [%time:~0,-3%] ��������ֹͣ��
C:/Users/Administrator/AppData/Local/Microsoft/WindowsApps/python3.12.exe c:/Users/Administrator/Desktop/McAutoSafe.py
call :QL
if /i "%Rs%"=="true" (
for /l %%i in (3,-1,0) do (
set /p =!Ts![%time:~0,-3%] %%i ����������� . . .<nul
ping -n 2 127.1 >nul
)
goto :y
)
pause
exit
:GetIPv6
echo [%time:~0,-3%] ���Ժ����ڻ�ȡIPv6
for /f "delims=" %%i in ('ipconfig') do (
set IPv6=%%i
echo %%i|findstr "IPv6" >nul && goto :yyp
)
echo [%time:~0,-3%] ����:���ĵ��Բ�֧��IPv6
if "%IPv4%"=="" (
echo [%time:~0,-3%] �ش����:���ĵ����ڲ�֧��IPv6�������û����дIPv4��
pause
exit
)
:yyp
echo [%time:~0,-3%] ���ڶԻ�ȡ������Ϣ���вü� . . . ��ɾ��IPv6������Ϣ��
set IPv6=%IPv6: =%
set IPv6=%IPv6:.=%
set IPv6=%IPv6:IPv6=%
set IPv6=%IPv6:��ַ=%
set IPv6=%IPv6:~1%
goto :eof
:xy
cls
title ��Ȩ����
echo;
echo; �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo; �U��Ȩ����                                                                  �U
echo; �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
echo; �U��֪������Ȼ�˳�������ȫ��ѵģ�����û�в鿴�����Ȩ�ޡ�                �U
echo; �U                                                                          �U
echo; �U����:�����������������Ȩ���͹�����Լ������δ����Ȩ�����Ը��ƻ򴫲������� �U
echo; �U���������κβ��֣��������ܵ����������¼������Ʋã������ڷ�����ɷ�Χ���ܵ��U
echo; �U���̶ȵ����ߡ�                                                          �U
echo; �U                                                                          �U
echo; �U�������ͬ��Э�鲢����ʹ�ó��� . . .                                      �U
echo; �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
pause>nul
echo;                                                                                                                                                                                                                                                                                                              XY=1ffffff>>Config.txt
title ������������ - Cmd1152����
goto :eof
:colorSX
for /l %%i in (1,1,10) do (
color 70
color 07
set /a tmpj=%%i*10
set /p =!Ts![%time:~0,-3%] ����ˢ��^(!tmpj!%%/100%%^)...<nul
)
echo;
goto :eof
:QL
if /i "%QLRZ%"=="True" (
for /l %%i in (3,-1,0) do (
set /p =!Ts![%time:~0,-3%] %%i ���������־�ʹ�����־ . . .<nul
ping -n 2 127.1 >nul
)
echo;
if exist logs (
set /p =!Ts![%time:~0,-3%] ����������־�ʹ�����־ . . .<nul
rd /s /q logs
md logs
set /p =!Ts![%time:~0,-3%] ������־���                <nul
) else (
set /p =!Ts![%time:~0,-3%] �Ҳ�����־�ļ���            <nul
)
if exist crash-reports (
set /p =!Ts![%time:~0,-3%] �������������־ . . .      <nul
rd /s /q crash-reports
md crash-reports
set /p =!Ts![%time:~0,-3%] ���������־���            <nul
) else (
set /p =!Ts![%time:~0,-3%] �Ҳ���������־ �ļ���       <nul
)
)
set /p =!Ts![%time:~0,-3%] ��������ɹ�ִ�����        <nul
echo;
goto :eof