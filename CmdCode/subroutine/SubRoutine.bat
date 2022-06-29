rem サブルーチン呼び出し(引数定義)

call :test 111 222 333

rem ここまででメインコードを終了する

exit /b

rem 「test」ルーチン
:test

rem 引数の参照
echo 第2引数は「%1」です
echo 第2引数は「%2」です
echo 第3引数は「%3」です