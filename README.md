# Akari
<div style="text-align:right">Language: <i>English</i> | <a href="README_JA.md">日本語</a></div>

This is Akari interpreter written in Ruby.



## What is Akari language?

It is a derivatives of Brainfuck. Please see https://qiita.com/segur/items/96989fc1dc282d0a02bd for the detail. (Japanese only)




Akari language has the eight language commands below:

| Akari command   | Brainfuck command | Behavior                                                     |
| --------------- | ----------------- | ------------------------------------------------------------ |
| ピロリンッ      | >                 | increment the data pointer (to point to the next cell to the right). |
| 悪い子ちゃん    | <                 | decrement the data pointer (to point to the next cell to the left). |
| ハロー！        | +                 | increment (increase by one) the byte at the data pointer.    |
| ヤミ            | -                 | decrement (decrease by one) the byte at the data pointer.    |
| あ、カラスだ    | .                 | output the byte at the data pointer.                         |
| おけまる        | ,                 | accept one byte of input, storing its value in the byte at the data pointer. |
| いきま→しょう！ | [                 | if the byte at the data pointer is zero, then jump it forward to the command after the matching `卍` command. |
| 卍              | ]                 | if the byte at the data pointer is nonzero, then jump it back to the command after the matching `いきま→しょう！` command. |



For example, the following program prints  `Hello, wolrd!` to the screen:

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



## Dependency

The following libraries are mainly used.

- `bundler`　： Gem management
- `minitest` ： Unit test
- `r-fxxk` ： Brainfuck
- `thor` ： Command line tool



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'akari'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install akari



## Usage

### Show help

```bash
$ akari h
Commands:
  akari convert {akari_code_file}  # Convert {akari_code} to {brainfxxk_code}
  akari execute {akari_code_file}  # Execute {akari_code}
  akari help [COMMAND]             # Describe available commands or one speci...
  akari version                    # Show akari version
```

### Convert Akari Code to Brainfxxk Code

```bash
$ akari convert sample/hello_world.akari > sample/hello_world.bf
```

### Execute Akari Code

```bash
$ akari execute sample/hello_world.akari
Hello, world!
```



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/segurvita/akari. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.



## Author

[@segur_vita](https://twitter.com/segur_vita)



## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).



## Code of Conduct

Everyone interacting in the Akari project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/akari/blob/master/CODE_OF_CONDUCT.md).
