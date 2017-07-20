# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trademark_searcher/version'

Gem::Specification.new do |spec|
  spec.name          = "trademark_searcher"
  spec.version       = TrademarkSearcher::Version::VERSION
  spec.authors       = ["luckypool"]
  spec.email         = ["luckypool314@gmail.com"]

  spec.summary       = 'TrademarkSearcher is J-PlatPat scraper.'
  spec.homepage      = "https://github.com/luckypool/trademark_searcher"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry-byebug", "~> 3.4"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency "mechanize", "~> 2.7.5"
end
