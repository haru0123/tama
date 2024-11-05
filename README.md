# ia33_tama

## 使用技術
- IDE  : eclipse
- Lang : Java (Spring Boot)
- DB : ~~Oracle~~ MySQL


## プロジェクトのセットアップ手順
1. コマンドプロンプトを起動し、"C:\pleiades\202X-XX\workspace" をカレントディレクトリとする。\
※  202X-XXは、自身のフォルダを確認し、適宜変更すること。

2. `git clone https://github.com/haru0123/tama.git`を実行し、/workspaceにtamaプロジェクトを追加する。
   
3. フォルダ名がgitの{リポジトリ名}-{ブランチ名}となっているため、これを"FinancialQuiz"に変更する。

4. eclipseを起動後、ワークスペースとしてのディレクトリを../workspaceとして起動する。

5. eclipseが完全に立ち上がったら、上部メニューのファイル > ファイル・システムからプロジェクトを開く画面のインポート・ソース入力欄に"C:\pleiades\202X-XX\workspace\FinancialQuiz"を入力し、完了ボタンを押下する。\
※何度も言うが、202X-XXは、自身のフォルダを確認し、適宜変更すること。\
FincialQuizが見つからない場合は、インポート・ソース入力欄右のディレクトリーより選択すること。


## アプリケーションの実行方法
1. XAMMP Control Panelを開き、あらかじめMySQLをStartさせておく。

2. "src/main/java" 直下の"FinancialQuizApplication.java" を右クリックし、実行(R)>Spring Bootアプリケーションを押す。

3. デバッグモードで実行したい場合も同様に、右クリックで、デバッグ(D)>Spring Bootアプリケーションを押す。
