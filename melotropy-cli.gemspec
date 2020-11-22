# frozen_string_literal: true

require_relative "lib/melotropy/cli/version"

Gem::Specification.new do |spec|
  spec.name          = "melotropy-cli"
  spec.version       = Melotropy::Cli::VERSION
  spec.date          = "2020-11-22"
  spec.authors       = ["Fernando Garcia Samblas"]
  spec.email         = ["fernando.garcia@the-cocktail.com"]
  spec.license       = "GPL-3.0"
  spec.summary       = "Melotropy command-line interface."
  spec.description   = "Let's enjoy Melotropy from the command-line since its very beginning!!"
  spec.homepage      = "https://rubygems.org/gems/melotropy-cli"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nando/melotropy-cli"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.0.1"

  spec.add_development_dependency "aruba", "~> 1.0.3"
  spec.add_development_dependency "cucumber", "~> 5.2.0"

end
