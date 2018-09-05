$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "hustle_model/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hustle_model"
  s.version     = HustleModel::VERSION
  s.authors     = ["kawamura.hryk"]
  s.email       = ["kawamura.hryk@gmail.com"]
  s.homepage    = 'https://github.com/dqnch/hustle_model'
  s.summary     = 'HustleModel.'
  s.description = 'HustleModel.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
