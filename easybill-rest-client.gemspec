# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'easybill_rest_client/version'

Gem::Specification.new do |s|
  s.name        = 'easybill-rest-client'
  s.version     = EasybillRestClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['ad2games GmbH']
  s.email       = ['developers@ad2games.com']
  s.homepage    = 'http://ad2games.com'
  s.summary     = 'A ruby wrapper for the Easybill REST API'
  s.description = 'A ruby wrapper for the Easybill REST API'
  s.license     = 'MIT'

  s.add_runtime_dependency 'retryable', '~> 2.0'
  s.add_runtime_dependency 'virtus', '~> 1.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'vcr', '~> 3.0'
  s.add_development_dependency 'webmock', '~> 2.1'

  s.files         = `find *`.split("\n").uniq.sort.reject(&:empty?)
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = %w[lib]
end
