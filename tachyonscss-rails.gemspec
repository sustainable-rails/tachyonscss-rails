require_relative "lib/tachyonscss-rails/version"

Gem::Specification.new do |spec|
  spec.name = "tachyonscss-rails"
  spec.version = TachyonscssRails::VERSION
  spec.authors       = ["Dave Copeland"]
  spec.email         = ["davec@naildrivin5.com"]
  spec.summary       = %q{Use Tachyons in the Rails Asset Pipeline}
  spec.homepage      = "https://sustainable-rails.com"
  spec.license       = "Hippocratic"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sustainable-rails/tachyonscss-rails"
  spec.metadata["changelog_uri"] = "https://github.com/sustainable-rails/tachyonscss-rails/releases"

  spec.files = Dir["{app,lib}/**/*", "LICENSE.md", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
