# Akari [![Build Status](https://travis-ci.org/segurvita/akari.svg?branch=master)](https://travis-ci.org/segurvita/akari)
<div style="text-align:right">Language: <a href="README.md">English</a> | <i>日本語</i></div>

本プロジェクトは、Akari言語のインタプライターです。Rubyで書かれています。



## Akari言語とは

Brainfxxkの派生言語です。詳細は https://qiita.com/segur/items/96989fc1dc282d0a02bd をご覧ください。



以下のような仕様になっています。

| Akari命令       | Brainf*ck命令 | 動作                                                         |
| --------------- | ------------- | ------------------------------------------------------------ |
| ピロリンッ      | >             | ポインタをインクリメントする。                               |
| 悪い子ちゃん    | <             | ポインタをデクリメントする。                                 |
| ハロー！        | +             | ポインタが指す値をインクリメントする。                       |
| ヤミ            | -             | ポインタが指す値をデクリメントする。                         |
| あ、カラスだ    | .             | ポインタが指す値を出力に書き出す。                           |
| おけまる        | ,             | 入力から1バイト読み込んで、ポインタが指す先に代入する。      |
| いきま→しょう！ | [             | ポインタが指す値が0なら、対応する ` 卍` の直後にジャンプする。 |
| 卍              | ]             | ポインタが指す値が0でないなら、対応する `いきま→しょう！` にジャンプする。 |



例えば、 `Hello, wolrd!` を表示するコードは以下のようになります。

```
ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！
いきま→しょう！ピロリンッハロー！ハロー！ハロー！ハロー！ハロー！ハロー！
ハロー！ハロー！ピロリンッハロー！ハロー！ハロー！ハロー！ハロー！ハロー！
ハロー！ハロー！ハロー！ハロー！ハロー！ピロリンッハロー！ハロー！ハロー！
ハロー！ハロー！悪い子ちゃん悪い子ちゃん悪い子ちゃんヤミ卍ピロリンッ
あ、カラスだピロリンッハロー！ハロー！あ、カラスだハロー！ハロー！ハロー！
ハロー！ハロー！ハロー！ハロー！あ、カラスだあ、カラスだハロー！ハロー！
ハロー！あ、カラスだピロリンッヤミあ、カラスだヤミヤミヤミヤミヤミヤミヤミ
ヤミヤミヤミヤミヤミあ、カラスだ悪い子ちゃんハロー！ハロー！ハロー！
ハロー！ハロー！ハロー！ハロー！ハロー！あ、カラスだヤミヤミヤミヤミヤミ
ヤミヤミヤミあ、カラスだハロー！ハロー！ハロー！あ、カラスだヤミヤミヤミ
ヤミヤミヤミあ、カラスだヤミヤミヤミヤミヤミヤミヤミヤミあ、カラスだ
ピロリンッハロー！あ、カラスだ
```



## 使用ライブラリ

主に以下のライブラリを使用しています。

- `bundler`　： gem管理機能
- `minitest` ： ユニットテスト機能
- `r-fxxk` ： Brainfxxk機能
- `thor` ： コマンドラインツール機能



## インストール方法

Rubyのコードを作成中の場合、以下のコードをGemfileに追加してください。

```ruby
gem 'akari'
```

そして以下のコマンドを実行すれば、インストールされます。

```bash
$ bundle
```

あるいは、以下のコマンドでもインストールが可能です。

```bash
$ gem install akari
```



## 使用方法

### ヘルプを表示する

```bash
$ akari h
Commands:
  akari convert {akari_code_file}  # Convert {akari_code} to {brainfxxk_code}
  akari execute {akari_code_file}  # Execute {akari_code}
  akari help [COMMAND]             # Describe available commands or one speci...
  akari version                    # Show akari version
```

### Akari言語のコードをBrainfxxkのコードに変換する

```bash
$ akari convert sample/hello_world.akari > sample/hello_world.bf
```

### Akari言語を実行する

```bash
$ akari execute sample/hello_world.akari
Hello, world!
```



## Contributing

バグ報告やプルリクエストは、https://github.com/segurvita/akari にお願いします。



## 作成者

[@segur_vita](https://twitter.com/segur_vita)



## ライセンス

[MIT License](https://opensource.org/licenses/MIT).


