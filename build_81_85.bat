@ECHO OFF

GOTO PHP85

CALL build.bat php-8.1-no-xdebug 
CALL build.bat php-8.1 

CALL build.bat php-8.2-no-xdebug 
CALL build.bat php-8.2 

CALL build.bat php-8.3-no-xdebug 
CALL build.bat php-8.3 

:PHP84
CALL build.bat php-8.4-no-xdebug 
CALL build.bat php-8.4 

:PHP85
CALL build.bat php-8.5-no-xdebug 
REM CALL build.bat php-8.5 

:END
ECHO.
PAUSE
PAUSE
