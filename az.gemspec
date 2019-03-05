# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/az/constants"

Gem::Specification.new do |gem|
  gem.name          = "az"
  gem.version       = Az::VERSION
  gem.summary       = "Collects different ways of A-Z"
  gem.description   = "Going from A to Z in different ways"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/az"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"

  gem.add_dependency "paint", ">= 0.9", "< 3.0"
  gem.add_dependency "rationalist", "~> 2.0"
end
