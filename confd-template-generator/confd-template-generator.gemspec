# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'confd/template/generator/version'

Gem::Specification.new do |spec|
  spec.name          = "confd-template-generator"
  spec.version       = Confd::TemplateGenerator::VERSION
  spec.authors       = ["Smit Shah"]
  spec.email         = ["config-service-dev@flipkart.com"]
  spec.license       = "MIT"
  spec.summary       = "Generates confd toml,templ and JSON payload"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = "confd-generator"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "thor"
end
