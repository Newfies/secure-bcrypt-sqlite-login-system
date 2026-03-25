@echo off

:Installation-Process
title NodeJS Installation
echo Installing npm dependencies...
call npm install
echo Dependencies installed.

IF EXIST ".env" (
    echo .env already exists, skipping creation.
) ELSE (
    echo SESSION=%random% > .env
    echo PORT=3000 >> .env
    echo PASSWORD=%random%%random%%random%%random%%random%%random% >> .env
    echo .env file created successfully.
)

pause
exit
