# Growth！

## 経験シェアサービス

## 概要
Growth！は、あなたのDIC卒業後の成長を加速させます。							
エンジニアとしての経験をシェアして、ユーザーとWin-Winの関係を構築します。							
エンジニア側は、ユーザーへ特定の経験を販売して収入を得ます。							
ユーザー側は、先輩達の経験から学び成長を加速させます。							

## コンセプト

エンジニアと駆け出しエンジニアのWin-Winの関係を構築

## バージョン

Ruby 2.6.3 Rails 5.2.４

## 機能一覧

* ログイン機能
*  ユーザー登録機能
    *  メールアドレス、名前、パスワードは必須
*  パスワード再設定機能
*  投稿機能
    *  タイトルと記事内容は必須
*  投稿編集機能
*  投稿削除機能
    *  投稿編集と投稿削除は投稿者のみ実行可能
*  投稿お気に入り機能
    *  投稿のお気に入りについては1つの投稿に対して1人1回しかできない
    *  自分自身の投稿にはお気に入りできない
*  詳細表示機能
    *  コメント数を表示
    *  お気に入り数を表示
*  コメント投稿機能
*  コメント削除機能
*  コメント編集機能
    *  コメント編集とコメント削除はコメントした本人のみ可能
*  コメント機能とお気に入り機能についてはページ遷移なしで実行できる
* Twitter等と連携し、詳細画面から見られる
* エンジニア側は、指定した記事を有料設定にする事が出来る
* チャット機能で会話が可能
　
## カタログ設計
https://docs.google.com/spreadsheets/d/11bEspNxUzVKUCO-LFYMyANh9cauIYae4KmmyP_JnlM4/edit#gid=1275279212

## テーブル定義
https://docs.google.com/spreadsheets/d/1BC9Hwpoi0jDLYsGY47nHftuCP9T4xiApWXIDVUtdPCQ/edit#gid=1376900256

## 画面遷移図
https://docs.google.com/spreadsheets/d/1ij9k2t9zsrVsuvPmbSYUceHRP6ioussaqwmY02KWekQ/edit#gid=0

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1bX9LQhBIdVDFHzxH2S1Z4Loga2PiAdJLsBN2ASlx1Lg/edit#gid=0

## 使用予定Gem
carrierwave
mini_magick
devise
rails-i18n
rails_admin
cancancan
kaminari
ransack
