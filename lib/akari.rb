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

  # compile to Brainfuck
  def self.compile_to_bf(akari)
    AkariSpec.new.compile(akari)
  end

  # run
  def self.run(akari)
    AkariSpec.new.fuck(akari)
  end  
end
