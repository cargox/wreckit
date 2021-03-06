# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "wreckit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = "wreckit"
  spec.version = Wreckit::VERSION
  spec.authors = ["Romeu Fonseca"]
  spec.email = ["romeu.hcf@gmail.com"]
  spec.summary = "Generates forced errors on rails app"
  spec.homepage = "https://github.com/cargox/wreckit"
  spec.description = "Remote controled library for generate forced erros on rails applications."
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.2.3", "< 6.1.0"
end
