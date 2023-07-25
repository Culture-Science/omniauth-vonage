require_relative "lib/omniauth/vonage/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-vonage"
  spec.version = Omniauth::Vonage::VERSION
  spec.authors = ["Yuta Morinaga"]
  spec.email = ["y.c.morinaga+1@gmail.com"]

  spec.summary = "This Gem contains the Vonage strategy for OmniAuth using OAuth2"
  spec.homepage = "https://github.com/Culture-Science/omniauth-vonage"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/Culture-Science/omniauth-vonage/issues",
    "changelog_uri" => "https://github.com/Culture-Science/omniauth-vonage/releases",
    "source_code_uri" => "https://github.com/Culture-Science/omniauth-vonage",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency "thor", "~> 1.2"
end
