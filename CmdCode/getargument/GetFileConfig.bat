@echo off 
cls

rem 「%1」のドライブ名を確認
echo 【ドライブ名】
echo %~d1
echo;

rem 「%1」のフルパスを確認
echo 【フルパス名】
echo %~f1
echo;

rem 「%1」を短い名前で確認
echo 【短いファイル名】
echo %~s1
echo;

rem 「%1」のパス名のみを確認
echo 【パス名のみ】
echo %~p1
echo;

rem 「%1」に入っているフルパス名からファイル名だけ取得
echo 【ファイル名】
echo %~n1
echo;

rem 「%1」の拡張子を確認
echo 【拡張子】
echo %~x1
echo;

rem 「%1」の日付や時刻を確認
echo 【日付や時刻】
echo %~t1
echo;

rem 「%1」のファイル属性を確認
echo 【ファイル属性】
echo %~a1
echo;

rem 「%1」のサイズを確認
echo 【サイズ】
echo %~z1
echo;

rem コマンドプロンプトに制御を戻す
exit /b