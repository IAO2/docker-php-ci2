@ECHO OFF

REM CALL build.bat php-7.3 
REM CALL build.bat php-7.3-no-xdebug 

REM CALL build.bat php-7.4 
REM CALL build.bat php-7.4-no-xdebug 

CALL build.bat php-8.0 
CALL build.bat php-8.0-no-xdebug 

CALL build.bat php-8.1 
CALL build.bat php-8.1-no-xdebug 

:END

PAUSE
PAUSE