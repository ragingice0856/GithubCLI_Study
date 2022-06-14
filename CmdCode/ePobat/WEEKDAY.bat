@echo off

rem *************************
echo 環境変数セット
rem *************************

set COPY_MOTO=C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp
set COPY_TESTV=te*.txt

rem *************************
echo ***　曜日判定 ***
rem *************************

rem week.vbsにWscript.echo weekdayの文字列を出力
echo Wscript.echo weekday(date()) > week.vbs

rem 変数Xにweek.vbsの処理結果を代入、その後変数YOUBIに再度代入
for /f %%X in ('cscript //nologo week.vbs') do set YOUBI=%%X

rem 変数YOUBIに1-7のどれかが入った場合、その値と等しい(EQU)XXX_COPYに飛ぶ
if %YOUBI% EQU 1 goto SUN_COPY
if %YOUBI% EQU 2 goto MON_COPY
if %YOUBI% EQU 3 goto TUE_COPY
if %YOUBI% EQU 4 goto WED_COPY
if %YOUBI% EQU 5 goto THU_COPY
if %YOUBI% EQU 6 goto FRI_COPY
if %YOUBI% EQU 7 goto SAT_COPY

:SUN_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから日曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\01mon\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\07sun %COPY_TESTV%
goto :BAT-END

:MON_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから月曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\02tue\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\01mon %COPY_TESTV%
goto :BAT-END

:TUE_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから火曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\03wed\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\02tue %COPY_TESTV%
goto :BAT-END

:WED_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから水曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\04thu\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\03wed %COPY_TESTV%
goto :BAT-END

:THU_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから木曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\05fri\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\04thu %COPY_TESTV%
goto :BAT-END

:FRI_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから金曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\06sat\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\05fri %COPY_TESTV%
goto :BAT-END

:SAT_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\tempから土曜ディレクトリにtestV.txtをコピー

rem 翌曜日に格納されているtxtファイルは確認なし(/q)で削除する
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\07sun\*.txt /q

rem testVにコピー
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\06sat %COPY_TESTV%
goto :BAT-END

:BAT-END

exit /b