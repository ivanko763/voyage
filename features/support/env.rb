require 'capybara'
require 'spinach-rails'
require 'rspec'
require 'headless'
require 'database_cleaner'
#require 'firefox'
require 'selenium-webdriver'

require 'spinach/capybara'
ENV['RAILS_ENV']='test'
require_relative '../../config/environment'

require 'database_cleaner'
Spinach.hooks.before_run{
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean 
}

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
#Capybara.javascript_driver = :chrome
Capybara.default_max_wait_time = 10

headless = Headless.new
headless.start
at_exit { headless.stop }

#@step_number=1
#Spinach.hooks.before_step do |step, location|
#  headless.take_screenshot 'tmp/ss1'+@step_number.to_s+"_"+rand(1..9999999).to_s+'.jpg'
#  @step_number=@step_number+1
#end

#DatabaseCleaner.strategy = :truncation
#DatabaseCleaner.clean

Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, browser: :chrome)

  Selenium::WebDriver::Firefox::Binary.path = "/opt/firefox36/firefox"
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox #,
    #desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(marionette: false)
  )
end

Spinach.hooks.after_step do |step, location|
  # show js errors
#  errors = Capybara.page.driver.browser.manage.logs.get(:browser)
#  if errors.present?
#    message = errors.map(&:message).join("\n")
#    puts message
#  end
end
