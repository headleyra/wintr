# -*- encoding: utf-8 -*-

$:.push File.expand_path('../lib', __FILE__)
require 'wintr/version'

Gem::Specification.new do |s|
  s.name             = 'wintr'
  s.version          = Wintr::VERSION
  s.authors          = ['R Headley']
  s.email            = ['headleyra@yahoo.com']
  s.homepage         = 'http://github.com/headleyra/wintr'
  s.summary          = 'A Ruby integer to word converter'
  s.description      = 'Convert integers into their word equivalents'
  s.license          = 'MIT'

  s.files            = Dir['lib/**/*.rb']
  s.test_files       = Dir['spec/**/*.rb']
  s.extra_rdoc_files = ['README.md']
  s.require_paths    = ['lib']

  s.add_development_dependency 'rspec', '~> 3.2'
end
