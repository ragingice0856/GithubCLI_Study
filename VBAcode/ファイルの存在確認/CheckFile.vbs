Option Explicit

Dim fileSysObj
'�t�@�C���V�X�e���I�u�W�F�N�g�̐���
Set fileSysObj = CreateObject("Scripting.FileSystemObject")

Dim textFileObj
'�e�L�X�g�t�@�C���I�u�W�F�N�g�̐���
Set textFileObj = fileSysObj.CreateTextFile("test.txt", true)

'�����񏑂�����
textFileObj.Write("Line1"+vbCrLf+"Line2")

'�t�@�C�����㏑���R�s�[
Call fileSysObj.CopyFile("test.txt", "test_copy.txt")

'�t�@�C�������
textFileObj.Close

'�t�@�C�����폜
fileSysObj.DeleteFile "test.txt",True

'�t�@�C���̑��݊m�F
if fileSysObj.FileExists("test_copy.txt") = true then
    MsgBox "test_copy.txt�͑��݂��܂�"
else
    MsgBox "test_copy.txt�͑��݂��܂���"
end if