require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "faker"
require 'allure-cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "http://www.inmrobo.tk/accounts/login"  
end
