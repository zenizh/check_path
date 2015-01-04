$:.push File.expand_path("../lib", __FILE__)

require "rails/check_path/version"

Gem::Specification.new do |s|
  s.name        = "rails-check_path"
  s.version     = Rails::CheckPath::VERSION
  s.authors     = ["kami"]
  s.email       = ["kami30k@gmail.com"]
  s.homepage    = "https://github.com/kami30k/rails-check_path"
  s.summary     = "Add some helpers that checks current path."
  s.description = "Add some helpers that checks current path."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
