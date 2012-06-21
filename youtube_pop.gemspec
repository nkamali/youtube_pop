# -*- encoding: utf-8 -*-
require File.expand_path('../lib/youtube_pop/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Navid Kamali"]
  gem.email         = ["navidkamali@gmail.com"]
  gem.description   = %q{A simple YouTube wrapper around Standard Video Feeds. }
  gem.summary       = %q{Gets Top rated, Most viewed, Most shared, Most popular, Most recent, Most discussed, Most responded, Recently featured, Trending videos}
  gem.homepage      = "http://github.com/nkamali/youtube_pop"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "youtube_pop"
  gem.require_paths = ["lib"]
  gem.version       = YoutubePop::VERSION

  # All Dependencies
  gem.add_dependency "faraday", "~> 0.8.0"

  # Development Only Dependencies
  gem.add_development_dependency "rspec", "~> 2.6"
end
