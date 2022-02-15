@echo off
md C:\treyapps\filelock
copy *.* C:\treyapps\filelock
md %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\filelock\"
@echo on
copy "C:\treyapps\filelock\uninstall file safe.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\filelock\uninstall file safe.lnk"
copy "C:\treyapps\filelock\File safe.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\filelock\File safe.lnk"