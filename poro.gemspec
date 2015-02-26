# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poro/version'

Gem::Specification.new do |spec|
  spec.name          = "poro"
  spec.version       = Poro::VERSION
  spec.authors       = ["Grey_Rabbit"]
  spec.email         = ["youssef.senpai@gmail.com"]


  spec.summary       = "Command line that takes a file witch countains
                        the program and with known syntaxe and the it pareses it 
                        so it could tell you witch task to do"
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/grey-rabbit/poro"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
