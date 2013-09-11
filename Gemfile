# if ENV["dev"]
source 'http://ruby.taobao.org'
# else
#   source 'http://rubygems.org'
# end

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'rails_12factor'

gem 'pg'
# gem 'twitter-bootstrap-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'haml-rails'

gem 'bootstrap-sass'

gem "compass-rails",    github: "milgner/compass-rails", 
                        ref: "1749c06f15dc4b058427e7969810457213647fb8"
gem 'compass-h5bp'
gem 'html5-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'rails_admin'

gem 'grape'

gem "devise"

gem 'simple_form'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
#  gem 'ruby-debug19'
  gem 'rspec-rails'
  # gem 'ffaker'
  gem "database_cleaner"
  gem "email_spec"
  gem "capybara", :require => false
  gem 'factory_girl_rails'
  gem 'spork'
  # gem 'jasmine'
  # gem 'jasminerice'
  # gem 'jasmine-jquery-rails'
end

group :development do
  gem 'mina'
  gem 'thin'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem "guard-annotate"
  gem "guard-bundler"
  gem "guard-livereload"
  gem "guard-jasmine"
  gem "terminal-notifier-guard"
  gem "letter_opener"
  # gem 'rb-fsevent', '~> 0.9'
  gem 'quiet_assets'

  gem "better_errors"
  gem "binding_of_caller"
end