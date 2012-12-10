# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'methodphitamine/version'

Gem::Specification.new do |gem|
  gem.name          = "methodphitamine"
  gem.version       = Methodphitamine::VERSION
  gem.authors       = ["Alexander Brausch"]
  gem.email         = ["alexander.brausch@caperwhite.com"]
  gem.description   = %q{The Methodphitamine! Creates the implied block argument "it" which makes the refining and enumerating of collections much simpler. For example, User.find(:all).collect &its.contacts.map(&its.last_name.capitalize)}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
