Encoding.default_external = "UTF-8"
require_relative "../akari"
require "thor"

module Akari
  class CLI < Thor
    desc "convert {akari_code_file}", "Convert {akari_code} to {brainfxxk_code}"
    def convert(filename)
      filebody = Akari.read_file(filename)
      puts Akari.convert(filebody)
    end

    desc "execute {akari_code_file}", "Execute {akari_code}"
    def execute(filename)
      filebody = Akari.read_file(filename)
      puts Akari.execute(filebody)
    end

    desc "version", "Show akari version"
    def version
      puts "akari " + Akari::VERSION
    end
  end
end
