@echo off
set work_path=%cd%
cd %work_path%
echo %work_path%
set no=0000
set name=show

for /F "tokens=2-3 delims=.=" %%i in (.\name_list.txt) do (
	echo "no:"%%j
	echo "name:"%%i	
	
	copy origin\%%j\L1\ db\%%i\0\enroll\st\
	copy origin\%%j\L2\ db\%%i\1\enroll\st\
	copy origin\%%j\L3\ db\%%i\2\enroll\st\

	copy origin\%%j\R1\ db\%%i\3\enroll\st\
	copy origin\%%j\R2\ db\%%i\4\enroll\st\
	copy origin\%%j\R3\ db\%%i\5\enroll\st\

	copy origin\%%j\L1\ db\%%i\0\verify\st\
	copy origin\%%j\L2\ db\%%i\1\verify\st\
	copy origin\%%j\L3\ db\%%i\2\verify\st\

	copy origin\%%j\R1\ db\%%i\3\verify\st\
	copy origin\%%j\R2\ db\%%i\4\verify\st\
	copy origin\%%j\R3\ db\%%i\5\verify\st\

)