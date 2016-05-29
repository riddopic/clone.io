# encoding: UTF-8

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'clone.io/identity'

Gem::Specification.new do |spec|
  spec.name = CloneIo::Identity.name
  spec.version = CloneIo::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Stefano Harding']
  spec.email = ['riddopic@gmail.com']
  spec.homepage = 'https://github.com/riddopic/clone.io'
  spec.summary = "A clone builder for images to make Goldstein happy."
  spec.description = "Genetically identical images that reproduce asexually."
  spec.license = 'MIT'

  if ENV['RUBY_GEM_SECURITY'] == 'enabled'
    spec.signing_key = File.expand_path('~/.ssh/gem-private.pem')
    spec.cert_chain = [File.expand_path('~/.ssh/gem-public.pem')]
  end

  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'thor_plus', '~> 3.1'
  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'gemsmith', '~> 7.7'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'pry-state'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rb-fsevent' # Guard file events for OSX.
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'terminal-notifier'
  spec.add_development_dependency 'terminal-notifier-guard'
  spec.add_development_dependency 'rubocop', '~> 0.40'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.files = Dir['lib/**/*', 'vendor/**/*']
  spec.extra_rdoc_files = Dir['README*', 'LICENSE*']
  spec.executables << 'clone.io'
  spec.require_paths = ['lib']
end
