# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'nbe-dataset-migrator'
  spec.version       = '0.1.0'
  spec.authors       = ['Michael Brown']
  spec.email         = ['michael.brown@socrata.com']

  spec.summary       = 'my summary here'
  spec.description   = 'my description here'
  spec.homepage      = 'https://github.com/socrata/nbe-dataset-migrator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ['dataset_migrator']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'addressable', '~> 2.3'
  spec.add_runtime_dependency 'httparty', '~> 0.13'
  spec.add_runtime_dependency 'json', '~> 1.8'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
end