@echo off
:ask
cls
color 3
echo please choose an number
echo 1) uninstall EVERYTHING (includes files in the private folder)
echo 2) Uninstall app (locks but keeps files in private folder)
echo 3) cancel uninstall
echo 4) debug (show file location for debug)
set/p "cho=>"
if %cho%==1 goto askuninstallall
if %cho%==2 goto askuninstall1
if %cho%==3 goto END
if %cho%==4 goto debug
color fc
echo invalid choice
pause
goto END
:askuninstall1
cls
echo Press close to cancel.
pause
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
rd %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\filelock" /s /q
del C:\treyapps\filelock /q
msg * Uninstalled!
goto END
:debug
test.bat
:askuninstallall
echo Are you sure you want to uninstall(Y/N)
echo your files will be deleted
set/p "cho=>"
if %cho%==Y goto uninstallaskall
if %cho%==y goto uninstallaskall
if %cho%==n goto END
if %cho%==N goto END
echo invalid choice
pause
goto END
:end
exit
:uninstallaskall
echo LAST CHANCE files in the private folder will be DELETED. Please make a backup of them.
set/p "cho=>"
if %cho%==Y goto uninstallall
if %cho%==y goto uninstallall
if %cho%==n goto END
if %cho%==N goto END
echo invalid choice
pause
goto END
:uninstallall
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
rd C:\treyapps\filelock\Private
rd %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\filelock" /s /q
del "C:\treyapps\filelock\*.bat*" /s /q
rd C:\treyapps\filelock /s /q
msg * Uninstalled!
pause