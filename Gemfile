source 'https://rubygems.org'

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra', '~> 1.0'
gem 'sinatra-contrib'

gem 'activesupport', '~> 4.2.0'
gem 'activerecord', '~> 4.2.0'

gem 'rake'

gem 'shotgun'
gem 'pry' #For testing and setup only. Do not use in production environment. Very useful for troubleshooting ruby code.
gem 'bcrypt'
gem 'dev'
gem 'dotenv'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec', '~> 3.2'
  gem 'capybara'
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker'
end
