Encoding.default_external = "UTF-8"
require_relative "akari/version"
require "r-fxxk"

module Akari
  # define Error
  class Error < StandardError; end

  # define Akari language
  class AkariSpec < Brainfuck
    nxt "ピロリンッ"
    inc "ハロー！"
    prv "悪い子ちゃん"
    dec "ヤミ"
    opn "いきま→しょう！"
    cls "卍"
    put "あ、カラスだ"
    get "おけまる"
  end

  # read source code from first argument
  program = ARGF.read

  # display source code
  puts program

  # display result
  puts Akari.new.fuck(program)
end
