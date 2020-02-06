require 'selenium-webdriver'
require 'rspec'
require 'pry'
require 'require_all'

require_all 'pages'

Before do
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--disable-translate')

  $driver = Selenium::WebDriver.for :chrome, options: options
  $driver.manage.timeouts.implicit_wait = 10
end

After do
  $driver.quit
end
