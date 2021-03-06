# frozen_string_literal: true

begin
  require "./lib/sequel-page/version"
rescue LoadError
  module SequelPage; VERSION = "0"; end
end

Gem::Specification.new do |spec|
  spec.name          = "sequel-page"
  spec.version       = SequelPage::VERSION
  spec.authors       = ["Szymon Kopciewski"]
  spec.email         = "s.kopciewski@gmail.com"
  spec.summary       = "The Sequel extension which allow you to query the specific page"
  spec.description   = "The Sequel extension which allow you to query the specific page"
  spec.homepage      = "https://github.com/skopciewski/sequel-page"
  spec.license       = "GPL-3.0"

  spec.require_paths = ["lib"]
  spec.files         = Dir.glob("{bin,lib}/**/*") + \
                       %w(Gemfile LICENSE README.md CHANGELOG.md)

  spec.add_runtime_dependency "sequel", "~>5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "codeclimate-test-reporter"
end
