# coding: us-ascii
# frozen_string_literal: true

require_relative './lib/github/urifreezer/version'

Gem::Specification.new do |gem|
  # specific

  gem.description   = %q{Getting GitHub permanent links to files}

  gem.summary       = gem.description
  gem.homepage      = 'https://github.com/kachick/github-urifreezer'
  gem.license       = 'MIT'
  gem.name          = 'github-urifreezer'
  gem.version       = GitHub::URIFreezer::VERSION

  gem.required_ruby_version = '>= 2.6'

  gem.add_runtime_dependency 'thor', '>= 1.1.0', '< 1.3.0'

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']

  git_managed_files = `git ls-files`.lines.map(&:chomp)
  might_be_parsing_by_tool_as_dependabot = git_managed_files.empty?
  base_files = Dir['README*', '*LICENSE*',  'lib/**/*', 'sig/**/*', 'exe/**/*'].uniq
  files = might_be_parsing_by_tool_as_dependabot ? base_files : (base_files & git_managed_files)

  unless might_be_parsing_by_tool_as_dependabot
    if files.grep(%r!\A(?:lib|sig)/!).size < 2
      raise "obvious mistaken in packaging files, looks shortage: #{files.inspect}"
    end
  end

  gem.files         = files
  gem.bindir        = 'exe'
  gem.executables   = files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']
end
