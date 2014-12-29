source 'https://rubygems.org'

ruby '2.0.0'

# Stack
gem 'rails', '4.1.6'
gem 'pg'
# gem 'sqlite3'
# gem 'puma'
# gem 'foreman'

# Admin
gem 'activeadmin', github: 'activeadmin'

# Auth
gem 'devise'

# View
gem 'slim-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'select2-rails'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'bootstrap-datepicker-rails'

# Misc
gem 'nokogiri'
gem 'ann_wrapper'
gem 'httparty'

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'spork-rails'
  gem 'pry'
  gem 'pry-rails'
  gem 'railroady', require: false
  gem 'terminal-notifier-guard', require: false # Shows test alerts in OS X 10.8 Notification Center
  gem 'faker'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'tzinfo-data', platforms: [:mingw, :mswin]
end

group :production do
  gem 'rails_12factor'
end