RSpec.configure do |config|
  # Other things

  # Clean up the database
  require 'database_cleaner'
   
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.orm = 'mongoid'
  end

  config.before(:each) do
    DatabaseCleaner.clean
  end
end