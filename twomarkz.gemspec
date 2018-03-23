
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "twomarkz/version"

Gem::Specification.new do |spec|
  spec.name          = "twomarkz"
  spec.version       = Twomarkz::VERSION
  spec.authors       = ["MesssyAdam"]
  spec.email         = ["messsy.adam@gmail.com"]

  spec.summary       = %q{A greeting to Marc.}
  spec.homepage      = "https://github.com/MesssyAdam/twomarkz"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
