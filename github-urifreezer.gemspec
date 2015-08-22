require './lib/github/urifreezer/version'

Gem::Specification.new do |gem|
  # specific

  gem.description   = %q{Github referenced URI(branch/path#Ln-Lm) is very useful to communicate.
  But they are temporary and unsteady, newer commits modify the meanings.
  This script replaces them with other URI that based to latest-commit of the branch.}

  gem.summary       = gem.description.dup
  gem.homepage      = 'https://github.com/kachick/github-urifreezer'
  gem.license       = 'MIT'
  gem.name          = 'github-urifreezer'
  gem.version       = Github::URIFreezer::VERSION.dup

  gem.required_ruby_version = '>= 2.2'

  gem.add_development_dependency 'rspec', '>= 3.3', '< 4'
  gem.add_development_dependency 'yard', '>= 0.8.7.6', '< 0.9'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 1.10', '< 2'

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
