@ECHO OFF
setlocal enabledelayedexpansion
for %%f in (.\tests\*_in.txt) do (
  set /p val=<%%f
  
	set "sub=%%~nxf"
	set "name=!sub:~0,4!"
	echo !name!

	:: Tady muzes zmenit nazev programu (prepis "uloha")
	uloha <%%f >out.txt
	FC out.txt .\tests\!name!_out_win.txt
)

del out.txt

PAUSE
