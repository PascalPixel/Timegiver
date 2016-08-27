require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module TimeGiver
  class Application < Rails::Application
    config.sass.preferred_syntax = :sass
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.i18n.available_locales = [:ja, :de, :nl, :en]
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :en
  end
end
