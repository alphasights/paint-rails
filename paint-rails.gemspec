# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paint-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "paint-rails"
  spec.version       = Paint::Rails::VERSION
  spec.authors       = ["Damon Aw"]
  spec.email         = ["daemonsy@gmail.com"]
  spec.summary       = %q{Rails Integration for Paint}
  spec.homepage      = "http://engineering.alphasights.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "> 3.1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
