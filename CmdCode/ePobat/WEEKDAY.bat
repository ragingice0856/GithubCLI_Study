@echo off

rem *************************
echo ���ϐ��Z�b�g
rem *************************

set COPY_MOTO=C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp
set COPY_TESTV=te*.txt

rem *************************
echo ***�@�j������ ***
rem *************************

rem week.vbs��Wscript.echo weekday�̕�������o��
echo Wscript.echo weekday(date()) > week.vbs

rem �ϐ�X��week.vbs�̏������ʂ����A���̌�ϐ�YOUBI�ɍēx���
for /f %%X in ('cscript //nologo week.vbs') do set YOUBI=%%X

rem �ϐ�YOUBI��1-7�̂ǂꂩ���������ꍇ�A���̒l�Ɠ�����(EQU)XXX_COPY�ɔ��
if %YOUBI% EQU 1 goto SUN_COPY
if %YOUBI% EQU 2 goto MON_COPY
if %YOUBI% EQU 3 goto TUE_COPY
if %YOUBI% EQU 4 goto WED_COPY
if %YOUBI% EQU 5 goto THU_COPY
if %YOUBI% EQU 6 goto FRI_COPY
if %YOUBI% EQU 7 goto SAT_COPY

:SUN_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp������j�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\01mon\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\07sun %COPY_TESTV%
goto :BAT-END

:MON_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp���猎�j�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\02tue\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\01mon %COPY_TESTV%
goto :BAT-END

:TUE_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp����Ηj�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\03wed\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\02tue %COPY_TESTV%
goto :BAT-END

:WED_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp���琅�j�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\04thu\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\03wed %COPY_TESTV%
goto :BAT-END

:THU_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp����ؗj�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\05fri\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\04thu %COPY_TESTV%
goto :BAT-END

:FRI_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp������j�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\06sat\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\V3\05fri %COPY_TESTV%
goto :BAT-END

:SAT_COPY
rem C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\temp����y�j�f�B���N�g����testV.txt���R�s�[

rem ���j���Ɋi�[����Ă���txt�t�@�C���͊m�F�Ȃ�(/q)�ō폜����
del C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\07sun\*.txt /q

rem testV�ɃR�s�[
robocopy %COPY_MOTO% C:\Users\ragin\work\Git-Knowledge\KnowledgeCode\CmdCode\ePobat\06sat %COPY_TESTV%
goto :BAT-END

:BAT-END

exit /b