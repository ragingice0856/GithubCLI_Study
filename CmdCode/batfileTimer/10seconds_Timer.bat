@echo off 

rem 10秒カウントダウンプログラム

echo 10秒タイマー：ENTERでスタート＞
pause > nul

for /l %%n in (10,-1,1) do (
echo カウントダウン：%%n
timeout /t 1 > nul
cls
)

echo カウントダウン：完了！！
pause > nul
exit