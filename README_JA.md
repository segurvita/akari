# Akari
<div style="text-align:right">Language: <a href="README.md">English</a> | <i>日本語</i></div>

これはAkari言語のインタプライターです。Rubyで書かれています。



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
  akari convert {akari_code_file}  # convert {akari_code} to {brainfxxk_code}
  akari execute {akari_code_file}  # execute {akari_code}
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


