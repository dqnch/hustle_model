module HustleModel
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec, fixtures: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end
  end
end
