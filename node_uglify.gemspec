# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'node_uglify/version'

Gem::Specification.new do |spec|
  spec.name          = "node_uglify"
  spec.version       = NodeUglify::VERSION
  spec.authors       = ["Victor Ortiz"]
  spec.email         = ["kespers@gmail.com"]

  spec.summary       = %q{Node UglifyJs wrapper to use as asset pipeline js compressor}
  spec.homepage      = "https://github.com/vortizhe/node_uglify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
