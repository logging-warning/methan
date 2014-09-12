# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'methan/version'

Gem::Specification.new do |spec|
  spec.name          = "methan"
  spec.version       = Methan::VERSION
  spec.authors       = ["logging-warning"]
  spec.email         = ["logging.warning@gmail.com"]
  spec.summary       = "Methan is a document tool with markdown."
  spec.description   = "Methan is a document tool with markdown."
  spec.homepage      = "http://logging-warning.github.io/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
