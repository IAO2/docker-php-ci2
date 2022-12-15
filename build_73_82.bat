@ECHO OFF

CALL build.bat php-7.3 
CALL build.bat php-7.3-no-xdebug 

CALL build.bat php-7.4 
CALL build.bat php-7.4-no-xdebug 

CALL build.bat php-8.0 
CALL build.bat php-8.0-no-xdebug 

CALL build.bat php-8.1 
CALL build.bat php-8.1-no-xdebug 

CALL build.bat php-8.2 
CALL build.bat php-8.2-no-xdebug 

:END

PAUSE
PAUSE