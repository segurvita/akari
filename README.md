# Akari
<div style="text-align:right">Language: <i>English</i> | <a href="README_JA.md">日本語</a></div>

This is Akari interpreter written in Ruby.



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
  akari convert {akari_code_file}  # convert {akari_code} to {brainfxxk_code}
  akari execute {akari_code_file}  # execute {akari_code}
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
