Option Explicit

Dim fileSysObj
'ファイルシステムオブジェクトの生成
Set fileSysObj = CreateObject("Scripting.FileSystemObject")

Dim textFileObj
'テキストファイルオブジェクトの生成
Set textFileObj = fileSysObj.CreateTextFile("test.txt", true)

'文字列書き込む
textFileObj.Write("Line1"+vbCrLf+"Line2")

'ファイルを上書きコピー
Call fileSysObj.CopyFile("test.txt", "test_copy.txt")

'ファイルを閉じる
textFileObj.Close

'ファイルを削除
fileSysObj.DeleteFile "test.txt",True

'ファイルの存在確認
if fileSysObj.FileExists("test_copy.txt") = true then
    MsgBox "test_copy.txtは存在します"
else
    MsgBox "test_copy.txtは存在しません"
end if