# Catpop Gem

## 概要

`catpop` は、ランダムな位置に猫の絵文字をポップアップ表示するRuby on Rails用のGemです。ページが読み込まれるたびに、異なる位置とサイズで猫の絵文字が表示され、数秒後に自動的に消えます。このGemは、Railsアプリケーションに簡単に組み込むことができます。

## インストール手順

### 前提条件

- Ruby バージョン: 2.7.8 以降
- Rails バージョン: 6.x 以降

### 1. Gemfile に追記

まず、Railsアプリケーションの `Gemfile` に以下の行を追加します:

```ruby
gem "catpop"
```

### 2. Gem のインストール

以下のコマンドを実行して gem をインストールします。

```sh
bundle install
```

### 3. レイアウトファイルにヘルパーを追加

次に、`application.html.erb` のレイアウトファイルを編集し、`catpop_script_tag` を追加してJavaScriptを読み込みます。

```erb
<!DOCTYPE html>
<html>
  <head>
    <title>CatpopTest</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>
    <%= catpop_script_tag %> <!-- この行を追加 -->
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
  </head>
  ...
```

## 使用例

- このGemは、ページに視覚的なアクセントを加えたり、遊び心のあるエフェクトを追加したいときに役立ちます。
- `catpop_script_tag` をテンプレートに追加するだけで、毎回異なる猫の絵文字が画面に表示されるようになります。

## ライセンス

このプロジェクトは、MITライセンスのもとで公開されています。詳細については、`LICENSE.txt` ファイルを参照してください。
```
