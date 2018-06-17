# dev-server-provision

## これは何?
docker, docker-compose を使った開発環境の構築を ansible で自動化するものです。
ansible の実行環境として docker + docker-compose を使用しています。

主にリモートの環境構築として使用することを想定していますが、
docker 環境がない場合でもホストマシンに ansible がインストールされていれば
ansible 以下の make run を実行することで動作が可能です。

## 実行環境
* (任意) Docker 18.05.0-ce
* (任意) docker-compose version 1.21.2
* ansible 2.4.4.0

## 実行手順
### docker を使う場合
1. ansible/hosts を用意する。例を ansible/hosts.example に置いてあるのでこれを参考に記述してください。
1. リモートサーバに接続するのに必要な鍵の設置。必要に応じて鍵ファイルを設置してください。ansible/.ssh/ 以下に置いて hosts から参照するといいでしょう。
1. make runを実行。何も問題がなければ以上で完了するはずです。(エラーが出た場合は、エラー内容を見てトライアンドエラーしてください)

### docker を使わない場合
1. ansible/hosts を用意する。例を ansible/hosts.example に置いてあるのでこれを参考に記述してください。
1. リモートサーバに接続するのに必要な鍵の設置。必要に応じて鍵ファイルを設置してください。ansible/.ssh/ 以下に置いて hosts から参照するといいでしょう。
1. 実行は ansible/ 以下に移動して make run を実行してください。また実行の際には ansible に実行パスが通っていて、バージョンが推奨環境以上である必要があります。
