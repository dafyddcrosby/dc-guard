# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "dc-guard"
  spec.required_ruby_version = ">= 2.5.0"
  spec.version     = "0.0.1"
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ["David Crosby"]
  spec.homepage    = "https://daveops.net"
  spec.summary     = "Guard configuration for projects"
  spec.description = spec.summary
  spec.license     = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test)/|\.(?:git))})
    end
  end
  spec.add_dependency "guard", "~> 2.18"
  spec.add_dependency "guard-rake", "~> 1.0"
end
