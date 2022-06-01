# ディレクトリの作成　mkdir [ディレクトリ名]
mkdir gh-cli-test

# 作成したディレクトリに移動
cd gh-cli-test

# ローカルリポジトリを作成
git init

# ローカルリポジトリにREADME.mdファイルを作成
touch README.md

# カレントディレクトリにあるファイル全てを追加 
git add .

# ステータス確認
git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   README.md

# コミットする　git commit -m [説明文]
git commit -m "first commit"
[master (root-commit) 0f2862b] first commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md

# リモートリポジトリの作成　対話型でできる
nagairyoujounoMacBook-Pro:gh-cli-test nagairyoma$ gh repo create
? What would you like to do? Create a new repository on GitHub from scratch
? Repository name //デフォルトでディレクト名
? Description This is the repository for testign Github CLI　//description記述
? Visibility Public　//publicかprivateか決める
? Would you like to add a .gitignore? No  //ignoreするかしないか
? Would you like to add a license? No　//ライセンス:改変せずにそのまま使用することだけを認めたいなら、ライセンスは明記しなくてもOK
This will create "gh-cli-test" as a public repository on GitHub. Continue? Yes //ここまで問題なければYで作成
