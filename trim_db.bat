@echo off
set work_path=%cd%
cd %work_path%\db
for /D %%n in (*) do (
	cd %%n
	for /D %%i in (*) do (
		cd  .\%%i
		cd enroll\st
		echo %%n\%%i\enroll\st
		del 018.bin
		del 019.bin
		del 02*.bin
		del 03*.bin
		del 04*.bin
		del 05*.bin
		cd ..\..
		cd verify\st
		echo %%n\%%i\verify\st
		del 00*.bin
		del 010.bin
		del 011.bin
		del 012.bin
		del 013.bin
		del 014.bin
		del 015.bin
		del 016.bin
		del 017.bin
		cd ..\..\..\  
	)
	cd ..
)
cd %work_path%