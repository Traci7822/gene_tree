  # Switch to a new branch
  git co -b rspec

  # Add testing and database to the Gemfile
  Gemfile
    gem 'mysql2'

  	group :development, :test do
  	  gem 'rspec-rails'
    	gem 'factory_girl_rails'
  	end

  	group :test do
    	gem 'faker'
    	gem 'capybara'
    	gem 'guard-rspec'
    	gem 'launchy'
  	end

  bundle

  # Update the development specs
  config/development.yml
    test:
    adapter: mysql2
    encoding: utf8
    reconnect: false
    database: myapp_test
    pool: 5
    username: root
    password:
    socket: /tmp/mysql.sock

  #Check database communication
  rake db:create:all

  # Add basic RSpec configuration
  rails g rspec:install

  # spec/spec_helper.rb add above RSpec.configure for integration testing
  require "capybara/rspec"

  # .rspec add for easy to read documentation format
  --format documentation

  # config/application.rb add to generate starter files and create factories (Factory Girl)
      config.generators do |g|
        g.test_framework :rspec,
          :fixtures => true,
          :view_specs => false,
          :helper_specs => false,
          :routing_specs => false,
          :controller_specs => true,
          :request_specs => true
        g.fixture_replacement :factory_girl, :dir => "spec/factories"
      end
