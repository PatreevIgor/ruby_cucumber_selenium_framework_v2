require 'selenium-webdriver'
require 'rspec'
require 'pry'

# Initialize block
PROJECT_PATH = '/home/administrator/projects/ruby_cucumber_selenium_framework'.freeze

# Adding files
require "#{PROJECT_PATH}/base/elements.rb"
require "#{PROJECT_PATH}/base/methods.rb"
require "#{PROJECT_PATH}/base/pathes.rb"
require "#{PROJECT_PATH}/base/base_page.rb"
Dir["#{PROJECT_PATH}/pages/*.rb"].each { |file| require file }

Before do |scenario|
  puts 'Before block'
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--disable-translate')

  $driver = Selenium::WebDriver.for :chrome, options: options
end

After do |scenario|
  puts 'After block'
end
