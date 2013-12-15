require 'cucumber'
require 'selenium-webdriver'
require 'rspec-expectations'
require 'securerandom'

Before do
  @driver = Selenium::WebDriver.for :firefox
end

After do
  @driver.quit
end