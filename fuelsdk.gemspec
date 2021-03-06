# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fuelsdk/version'

Gem::Specification.new do |spec|
	spec.name          = "fuelsdk"
	spec.version       = FuelSDK::VERSION
	spec.authors       = ["MichaelAllenClark", "barberj", "kellyjandrews"]
	spec.email         = ["code@exacttarget.com"]
	spec.description   = %q{API wrapper for SOAP and REST API with Salesforce Marketing Cloud (ExactTarget)}
	spec.summary       = %q{Fuel Client Library for Ruby}
	spec.homepage      = "https://github.com/ExactTarget/FuelSDK-Ruby"
	spec.license       = ""

	spec.files         = `git ls-files`.split($/)
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(samples|test|spec|features)/})
	spec.require_paths = ["lib"]

  spec.add_dependency "nori"
  spec.add_dependency "httpi"
  spec.add_dependency "wasabi"
  spec.add_dependency "akami"
  spec.add_dependency "gyoku"

  spec.add_dependency "builder",  ">= 2.1.2"
  spec.add_dependency "nokogiri", ">= 1.4.0"

  spec.add_development_dependency "mocha", "~> 0.11"
	spec.add_development_dependency "bundler", "~> 1.3"
	spec.add_development_dependency 'rake', '~>0.9'
	spec.add_development_dependency "rspec", '~> 2'
	spec.add_development_dependency "guard", '~> 0'
	spec.add_development_dependency "guard-rspec", '~> 0'

	spec.add_dependency "json", "~>1.8", ">= 1.8.1"
	spec.add_dependency "jwt", "~>1.0", ">= 1.0.0"
end
