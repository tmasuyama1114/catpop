# frozen_string_literal: true

require_relative "lib/catpop/version"

Gem::Specification.new do |spec|
  spec.name          = "catpop"
  spec.version       = Catpop::VERSION
  spec.authors       = ["tmasuyama1114"]
  spec.email         = ["tmasuyama1114@gmail.com"]
  spec.summary       = "A gem that displays a random cat emoji popup on the page at a fixed position."
  spec.description   = "Catpop is a gem that provides a random cat emoji popup for Rails applications. The emoji appears at a random position on the screen and disappears after a few seconds."
  spec.homepage      = "https://github.com/tmasuyama1114/catpop"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.8"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir["lib/**/*.rb"] + Dir["lib/assets/javascripts/**/*.js"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
