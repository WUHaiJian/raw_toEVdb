@echo off
set work_path=%cd%
cd %work_path%
mkdir db
cd db
for /F "tokens=2 delims=.=" %%j in (..\name_list.txt) do (
	mkdir %%j
	cd %%j
	echo %%j
	for /L %%i in (0, 1, 5) do (
		mkdir %%i
		cd %%i
		echo %%i
		mkdir enroll
		mkdir verify
		cd enroll
		mkdir st
		cd ..
		cd verify
		mkdir st
		cd ..\..\	
	)
	cd ..
)
cd %work_path%


