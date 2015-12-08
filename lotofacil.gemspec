# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lotofacil/version'

Gem::Specification.new do |s|
  s.name        = 'lotofacil'
  s.version     = Lotofacil::VERSION
  s.date        = '2015-12-08'
  s.summary     = "Lotofacil"
  s.description = "Generate number of lotofacil"
  s.authors     = ["Fabio Augusto Lopes Toledo"]
  s.email       = 'fabiotoledo79@yahoo.com.br'
  s.files       = ["lib/lotofacil.rb"]
  s.homepage    =
    'http://rubygems.org/gems/lotofacil'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.10.6"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "httparty", "~> 0.13.7"
  s.add_development_dependency 'rspec'
end
