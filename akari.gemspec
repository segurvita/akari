
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "akari/version"

Gem::Specification.new do |spec|
  spec.name          = "akari"
  spec.version       = Akari::VERSION
  spec.authors       = ["segur"]
  spec.email         = ["segur.opus@gmail.com"]

  spec.summary       = %q{Akari languarge interpreter written in Ruby.}
  spec.description   = %q{New Brainf*ck derivation language generator and executor.}
  spec.homepage      = "https://github.com/segurvita/akari"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  # Custom
  spec.add_runtime_dependency "r-fxxk", "~> 0.4"
  spec.add_dependency "thor"
end
