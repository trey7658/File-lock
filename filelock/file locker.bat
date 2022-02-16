@ECHO OFF
set currentpass=78779
title private folder
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder(Y/N)
set/p "cho=choose>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to unlock folder
set/p "pass=>"
if NOT %pass%== %currentpass% goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
:Unlocked
echo What do you want to do?
echo 1) Open folder
echo 2) Change password
echo 3) Lock the folder
set/p "cho=choose>"
if %cho%==1 goto openfolder
if %cho%==2 goto changepass
if %cho%==3 goto LOCK
echo Invalid choice.
goto Unlocked
:openfolder
@echo off
start %SystemRoot%\explorer.exe "C:\treyapps\filelock\private"
echo Folder Unlocked successfully
goto End
:changepass
start notepad.exe %0
start https://github.com/trey7658/File-lock/wiki/Change-password
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Private
echo Private created successfully
cls
echo your password is %currentpass%. To change it check the github wiki.
pause
start %SystemRoot%\explorer.exe "C:\treyapps\filelock\private"
goto End
:End
::enter custom commands here for when the app closes
cls
echo Good bye!
pause