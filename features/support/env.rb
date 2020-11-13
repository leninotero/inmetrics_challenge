require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "faker"
require 'allure-cucumber'

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'
    "#{source.last.keyword}#{text}"
  end
end


Capybara.configure do |config|
  config.default_driver = @driver
  config.default_max_wait_time = 10
  config.app_host = "http://www.inmrobo.tk/accounts/login"  
end
