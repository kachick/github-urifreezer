# frozen_string_literal: true

require 'bundler/gem_tasks'

require 'rake/testtask'
require 'rspec/core/rake_task'

begin
  require 'rubocop/rake_task'
rescue LoadError
  puts 'can not use rubocop in this environment'
else
  RuboCop::RakeTask.new
end

task default: [:test_behaviors]
task test_behaviors: [:spec]

multitask simulate_ci: [:test_behaviors, :validate_signatures, :rubocop]

RSpec::Core::RakeTask.new(:spec) do |rt|
  rt.ruby_opts = %w[-w]
end

task validate_signatures: [:test_yard]

task :test_yard do
  sh "bundle exec yard --fail-on-warning #{'--no-progress' if ENV['CI']}"
end

task :yard do
  sh 'bundle exec yard --fail-on-warning'
end
