@ECHO OFF

IF %1.==. GOTO HELP

CD %1

docker build --tag iao2/docker-php-ci2:%1 .

docker image push iao2/docker-php-ci2:%1

GOTO END

:HELP
ECHO.
ECHO.
ECHO zadejte parametr nazev složky
ECHO.
ECHO.

:END
CD ..

:BE5
C:\UTIL\JV_BE.exe 25

