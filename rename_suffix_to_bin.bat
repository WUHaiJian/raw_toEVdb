@echo off
set work_path=%cd%
cd %work_path%
cd origin
for /D %%e in (*) do (
	cd %%e
	for /D %%d in (*) do (
		cd %%d	
		if exist *.%1 (
			echo %%e\%%d
			ren *.raw *.bin
		)		
		if not exist *.%1 (
			for /D %%i in (*) do (
				cd  .\%%i			
				echo %%e\%%d\%%i
				ren *.raw *.bin			
				cd ..\
			)	
		)
		cd ..\
	)
	cd ..\
)
cd %work_path%




