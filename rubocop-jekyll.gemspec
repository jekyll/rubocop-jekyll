# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)

Gem::Specification.new do |s|
  s.name        = "rubocop-jekyll"
  s.version     = "0.2.0"
  s.authors     = ["Ashwin Maroli"]
  s.email       = ["ashmaroli@gmail.com"]
  s.homepage    = "https://github.com/ashmaroli/rubocop-jekyll"
  s.license     = "MIT"
  s.summary     = "Code style check for Jekyll and Jekyll plugins"
  s.description = "A RuboCop extension to enforce common code style in Jekyll and Jekyll plugins"

  s.files       = `git ls-files -z`.split("\x0").select do |file|
    file.match(%r!(^lib/)|LICENSE|README.md|.rubocop.yml!)
  end

  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.3.0"

  s.add_runtime_dependency "rubocop", "~> 0.59.0"
end
