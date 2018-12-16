Encoding.default_external = "UTF-8"
require_relative "akari/version"
require_relative "akari/cli"
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

  # compile to Brainfuck
  def self.convert(akari_code)
    AkariSpec.new.compile(akari_code)
  end

  # run
  def self.execute(akari_code)
    AkariSpec.new.fuck(akari_code)
  end
end
