@echo off
:CONFIRM
echo Are you updating? (Y/N)
set/p "cho=>"
if %cho%==Y goto UPDATE
if %cho%==y goto UPDATE
if %cho%==n goto INSTALL
if %cho%==N goto INSTALL
echo Invalid choice.
goto CONFIRM
:INSTALL
md C:\treyapps\filelock
copy *.* C:\treyapps\filelock
goto END
:UPDATE
cls
echo delete all non folders
pause
start explorer.exe "C:\treyapps\filelock" 
cls

echo press any key to start installing.
echo your password will be reset to the default. make sure to set them if you want a custom one.
pause
copy *.* C:\treyapps\filelock
goto END
:END