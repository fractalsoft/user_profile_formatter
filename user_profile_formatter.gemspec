# -*- encoding: utf-8 -*-
require File.expand_path('../lib/user_profile_formatter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aleksander Malaszkiewicz"]
  gem.email         = ["info@fractalsoft.org"]
  gem.description   = %q{Simple user profile formatter. It checks that user profile exists.}
  gem.summary       = %q{Format and validate a social media user profile}
  gem.homepage      = "https://github.com/fractalsoft/user_profile_formatter"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "user_profile_formatter"
  gem.require_paths = ["lib"]
  gem.version       = UserProfileFormatter::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-bundler"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "supermodel"
end
