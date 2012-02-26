# -*- encoding: utf-8 -*-

$:.push File.expand_path('../lib', __FILE__)
require 'wintr/version'

Gem::Specification.new do |s|
  s.name             = 'wintr'
  s.version          = Wintr::VERSION
  s.authors          = ['R Headley']
  s.email            = ['headleyra@yahoo.com']
  s.homepage         = 'http://github.com/headleyra/wintr'
  s.summary          = 'A number to word converter'
  s.description      = 'A number to word converter'

  s.files            = Dir['lib/**/*.rb']
  s.test_files       = Dir['spec/**/*.rb']
  # s.extra_rdoc_files = ['README.md']
  s.require_paths    = ['lib']

  s.add_development_dependency 'rspec', '~> 2.8'
end
