# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tenxlabs/chef/handlers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Radim Marek"]
  gem.email         = ["radim@10xengineer.me"]
  gem.description   = %q{10xLabs VM bootstrap report handler for Chef}
  gem.summary       = %q{10xLabs VM bootstrap report handler for Chef}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "10xlabs-bootstrap-handler"
  gem.require_paths = ["lib"]
  gem.version       = TenxLabs::Chef::Handlers::VERSION

  gem.add_dependency "microcloud", ">= 0.1.1"
end
