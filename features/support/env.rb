require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'pry'
require 'webdrivers'
require 'dotenv/load'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox, timeout: 60)
end

Capybara.configure do |config| 
  config.default_driver = :firefox
  config.default_max_wait_time = 60
end
