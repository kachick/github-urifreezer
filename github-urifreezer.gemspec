# frozen_string_literal: true
require './lib/github/urifreezer/version'

Gem::Specification.new do |gem|
  # specific

  gem.description   = %q{GitHub referenced URI(branch/path#Ln-Lm) is very useful to communicate.
  But they are temporary and unsteady, newer commits modify the meanings.
  This script replaces them with other URI that based to latest-commit of the branch.}

  gem.summary       = gem.description.dup
  gem.homepage      = 'https://github.com/kachick/github-urifreezer'
  gem.license       = 'MIT'
  gem.name          = 'github-urifreezer'
  gem.version       = '0.0.1.1'

  gem.required_ruby_version = '>= 2.6'

  gem.add_runtime_dependency 'thor', '>= 1.1.0', '< 1.2.0'

  gem.add_development_dependency 'rspec', '>= 3.3', '< 4'
  gem.add_development_dependency 'yard', '>= 0.8.7.6', '< 0.9'
  gem.add_development_dependency 'rake', '>= 10', '< 20'

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.require_paths = ['lib']
end
