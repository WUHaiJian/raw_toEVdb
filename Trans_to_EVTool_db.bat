call mkdir_db.bat
echo "create EV Tool format directory success"
pause
call rename_suffix_to_bin
echo "rename suffix from raw to bin"
pause
call mv_to_db.bat
echo "move picture from origin to db"
pause
call trim_db
echo "check enroll/verify directory(0-17, 18-59)"
echo "success"