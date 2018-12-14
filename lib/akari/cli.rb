Encoding.default_external = "UTF-8"
require_relative "../akari"
require "thor"

module Akari
  class CLI < Thor
    desc "convert {akari_code_file}", "convert {akari_code} to {brainfxxk_code}"
    def convert(str)
      filename = str.encode("UTF-8")
      filebody = File.read(filename).encode("UTF-8")
      puts Akari.convert(filebody)
    end

    desc "execute {akari_code_file}", "execute {akari_code}"
    def execute(str)
      filename = str.encode("UTF-8")
      filebody = File.read(filename).encode("UTF-8")
      puts Akari.execute(filebody)
    end
  end
end
