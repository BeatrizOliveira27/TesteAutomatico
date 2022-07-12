require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,browser: :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 10
    config.app_host = 'https://pt-br.facebook.com/'

end