Encoding.default_external = "UTF-8"
require_relative "../akari"
require "thor"

module Akari
  class CLI < Thor
    desc "convert {akari_code}", "convert {akari_code} to {brainfxxk_code}"
    def convert(str)
      Akari.compile_to_bf(str)
    end

    desc "execute {akari_code}", "execute {akari_code}"
    def execute(str)
      Akari.run(str)
    end
  end
end
