@ECHO OFF

REM GOTO PHP84

CALL build.bat php-8.1-no-xdebug 
CALL build.bat php-8.1 

CALL build.bat php-8.2-no-xdebug 
CALL build.bat php-8.2 

CALL build.bat php-8.3-no-xdebug 
CALL build.bat php-8.3 

:PHP84
CALL build.bat php-8.4-no-xdebug 
REM REM CALL build.bat php-8.4 

:END
ECHO.
PAUSE
PAUSE
