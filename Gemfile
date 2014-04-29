source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

# Infrastructure gems
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'thin'
gem 'bcrypt-ruby'
gem 'hpricot'
gem 'turbolinks'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'authbuttons-rails'
gem 'omniauth-linkedin'
gem 'paypal-sdk-rest'
gem 'haml-rails'

group :test,:development  do
  gem 'dotenv-rails'
  gem 'spring'
  gem 'pry'
  gem 'sqlite3'
  gem 'guard-rspec', '~> 4.2.7'  #, require: false
  gem 'rspec', '~> 3.0.0.beta2'
  gem 'rspec-rails', '~> 3.0.0.beta2'
  gem 'simplecov', '~> 0.7.1'
  gem 'rb-readline', '~> 0.5.0'
  gem 'codeclimate-test-reporter', require: nil
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :producation do
  gem 'rails_12factor'
end
