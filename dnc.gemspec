# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dnc/version'

Gem::Specification.new do |spec|
  spec.name          = "dnc"
  spec.version       = Dnc::VERSION
  spec.authors       = ["Steven Haddox"]
  spec.email         = ["steven@haddox.us"]
  spec.summary       = %q{Distinguished Name Converter}
  spec.description   = %q{Convert multiple X509 DN strings into a consistent(ish) format.}
  spec.homepage      = "https://github.com/stevenhaddox/dnc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
