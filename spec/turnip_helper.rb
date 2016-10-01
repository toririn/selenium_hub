require 'turnip'
require 'turnip/capybara'
require 'turnip/rspec'
require 'capybara'

#各種driverの設定
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :url => "http://localhost:#{ENV['SELENIUM_HUB_PORT']}/wd/hub")
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.javascript_driver = :selenium
  config.ignore_hidden_elements = true
  config.default_wait_time = 30
end

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }
