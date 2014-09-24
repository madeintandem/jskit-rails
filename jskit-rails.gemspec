$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jskit-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jskit-rails"
  s.version     = JSKitRails::VERSION
  s.authors     = ["Dayton Nolan"]
  s.email       = ["daytonn@gmail.com"]
  s.homepage    = "https://github.com/daytonn/jskit-rails"
  s.summary     = "Gem that provides Rails integration for jskit"
  s.description = "jsit-rails provides jskit.js to the asset pipeline and allows seamless event dispatching from your rails application to jskit."
  s.license     = "Apache 2.0"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1"
end
