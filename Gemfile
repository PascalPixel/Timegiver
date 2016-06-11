source 'https://rubygems.org'

# Bundler
gem 'bundler', '>= 1.8.4'

# Rails
gem 'rails', '~> 5.0.0.rc1' # BETA Ruby on Rails
gem 'puma', '~> 3.4.0' # Faster local server
gem 'rails-i18n', '~> 5.x' # Show different languages
gem 'pg', '~> 0.18.4' # Postgres databases are cool
gem 'turbolinks', '~> 5.x' # BETA Only reload page content
gem 'friendly_id', '~> 5.1.0' # Girl-next-door url's
gem 'react-rails', '~> 1.7.1' # React for the future of the human race
# gem "react_on_rails", "~> 5"

# Authentication
gem 'devise', '~> 4.1.1' # Users! Everywhere!

# Precompilers
gem 'haml-rails', '~> 0.9.0' # HAML to HTML
gem 'sass-rails', '~> 5.0.4' # Sass to CSS
gem 'coffee-rails', '~> 4.1.1' # Coffeescript to JS
gem 'jbuilder', '~> 2.4.1' # JSON
gem 'uglifier', '~> 3.0.0' # Clean outputs
gem 'redcarpet', '~> 3.3.4' # Markdown

# Forms
gem 'mail_form', '~> 1.5.1' # really?
gem 'nested_form', '~> 0.3.2' # Formception
gem 'simple_form', '~> 3.2.1' # Unformception

# Alerts
gem 'bootbox-rails', '~> 0.5.0' # Fancy Bootstrap alerts

# Vendor
gem 'jquery-rails', '~> 4.1.1' # jQuery, super handy
gem 'bootstrap', '~> 4.0.x' # BETA Bootstrap 4 for layout
gem 'font-awesome-rails', '~> 4.6.3.0' # Icon font
gem 'postmark-rails', '~> 0.12.0' # Email through Heroku

# Bower
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0' # Needed for Bootstrap 4 Tooltips and Popovers
  gem 'rails-assets-signature_pad', '~> 1.2.4' # Signatures on contracts using touch or mouse input
  gem 'rails-assets-chosen', '~> 1.5.1' # Beautiful Select dropdowns
  gem 'rails-assets-animate.css', '~> 3.5.1' # Stock CSS Animations
  gem 'rails-assets-velocity', '~> 1.2.2' # Super fast animation with JS
end

# Docs
group :doc do
  gem 'sdoc', '~> 0.4.1'
end

# Development and Testing
group :development, :test do
  gem 'byebug', '~> 9.0.3'
  gem 'rails-controller-testing', :git => 'https://github.com/rails/rails-controller-testing' # Needed for RSPEC on controllers
  gem 'rspec-rails', '~> 3.5.x' # BETA Running tests
end

# Development
group :development do
  gem 'web-console', '~> 3.1.1'
  gem 'listen', '~> 3.1.4'
  gem 'spring', '~> 1.7.1'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'seed_dump', '~> 3.2.4' # Export DB to seeds.db
end

# Testing
group :test do
  gem 'capybara', '~> 2.7.0'
  gem 'database_cleaner', '~> 1.5.2'
  gem 'factory_girl_rails', '~> 4.7.0'
  gem 'launchy', '~> 2.4.3'
  gem 'shoulda-matchers', '~> 3.1.1'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # For Windows to run dis

# Ruby version
ruby '2.3.1'
