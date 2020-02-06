require 'require_all'
require 'rspec'
require 'selenium-webdriver'

require_all 'pages'

RSpec.configure do |config|
  config.before do
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--disable-translate')
    options.add_argument('--headless')

    $driver = Selenium::WebDriver.for :chrome, options: options
    $driver.manage.timeouts.implicit_wait = 10
  end

  config.after do
    $driver.quit
  end
end
