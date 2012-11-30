source 'https://rubygems.org'

ruby '1.9.3' #, engine: 'jruby', engine_version: '1.7.0'

# platform :jruby do
#   ruby '1.9.3', engine: 'jruby', engine_version: '1.7.0'
# end
# 
# platform :ruby do
#   ruby '1.9.3'
# end

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongoid'
gem 'devise'

platform :jruby do
  # gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jruby-openssl'
  
  group :assets do
    gem 'therubyrhino'
  end
  
  group :production do
    gem 'puma'
  end
end

platform :ruby do
  # gem 'sqlite3'

  group :assets do
    gem 'therubyracer'
  end
  
  group :production do
    gem 'unicorn'
  end
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem 'twitter-bootstrap-rails', git: 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
end

gem 'jquery-rails'

group :test do
  # gem 'mock_redis'
  # gem 'resque_spec'
  # gem 'email_spec'
  # gem 'vcr'
  # gem 'steak'
  gem 'rspec-rails'
  gem 'mongoid-rspec'
  # gem 'webmock'
  # gem 'email_spec'
  # gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  # gem 'timecop'
  # gem 'rspec-http', '~> 0.9'
end

group :test, :darwin do
  gem 'rb-fsevent'
  gem 'growl'
  gem 'spork'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'guard-bundler'
end