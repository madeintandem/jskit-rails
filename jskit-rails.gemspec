$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jskit-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jskit-rails"
  s.version     = JSKit::VERSION
  s.authors     = ["Dayton Nolan"]
  s.email       = ["daytonn@gmail.com"]
  s.homepage    = "https://github.com/daytonn/jskit-rails"
  s.summary     = "Gem that provides Rails integration for jskit"
  s.description = "jsit-rails provides jskit.js to the asset pipeline and allows seamless event dispatching from your rails application to jskit."
  s.license     = "Apache 2.0"

  s.files = Dir["{lib,app}/**/*"] + ["LICENSE", "README.md"]
  s.test_files = Dir["spec/**/*_spec.rb"]

  s.add_dependency "rails", "~> 4.1"

  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "pry", "~> 0.10"
  s.add_development_dependency "pry-nav", "~> 0.2"
  s.add_development_dependency "rspec-rails", "~> 3.1"
  s.add_development_dependency "fuubar", "~> 2.0"
end
