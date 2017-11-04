
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "harvest/version"

Gem::Specification.new do |spec|
  spec.name          = "harvest-api"
  spec.version       = Harvest::VERSION
  spec.authors       = ["Zachary Chai"]
  spec.email         = ["zachary.chai@outlook.com"]

  spec.summary       = %q{A ruby wrapper for Harvest v2 API http://www.getharvest.com/api}
  spec.description   = %q{A ruby wrapper for Harvest v2 API http://www.getharvest.com/api}
  spec.homepage      = "https://github.com/zach-chai/harvest-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency "faraday", "~> 0.13"
  spec.add_dependency "faraday_middleware", "~> 0.12"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
