@echo off

rem カウントダウンプログラム(3分間)

echo 3分タイマー　カップ麺にしか使えん！　ENTERでスタート！

pause > nul
cls

for /l  %%n in (180,-1,1) do (
echo %%n
timeout /t 1 > nul
cls
)

echo カップ麺の出来上がり！
pause
exit