# study-ruby
- rubyの問題を解いて共有する用のレポジトリ

## ルール
### ディレクトリ構成
```
exercises/
  ├ source名1(paiza等)/
    ├ 問A名/
      ├ yasuhara.rb
      ├ daichi.rb
      ├ denden.rb
      └ udono.rb
    ├ 問B名/
      ├ yasuhara.rb
      ├ daichi.rb
      └ ...
    └ ...
  ├ source名2/
  └ ...
```

### ブランチ
- 問題ごとにorigin/masterからブランチを切る
  1. `$ git checkout master`
  2. `$ git pull origin master` (masterが最新じゃない場合)
  3. `$ git checkout -b "paiza/denden"(source名/名前)`
- pushしたい問のディレクトリがなければ作成して、自分の名前のrubyファイルを作成する
  1. `$ mkdir exercises/paiza(ソース名)/問2(問題名)`
  2. `$ touch exercises/paiza/問2/denden(名前).rb`
- 回答をコミットして、pull requestを作成する
  - タイトルとプルリクの名前は任せます...
- 2人以上からイイネ(or OK or LGTM...etc)をもらったらmasterブランチへmerge!

## source
### paiza
URL: https://paiza.jp/learning/page/problems
