@echo off
set /A a=41

mode con >> ModeTemp.txt

set /p speed="Select speed : [1/2]"
for /f "tokens=*" %%a in ('perl parse.pl') do (
    set cols=%%a
)
set /A cols-=1
del ModeTemp.txt

:colorLoop
for /L %%n in (1 %speed% %cols%) do (
	if %speed%==1 echo | set /p="[%a%m [0m"
	if %speed%==2 echo | set /p="[%a%m  [0m"
)
echo [%a%m [0m
set /A a+=1
if %a%==47 set /A a=41
goto :colorLoop